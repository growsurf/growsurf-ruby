# frozen_string_literal: true

require_relative "../../test_helper"

class GrowsurfRuby::Test::Resources::Campaign::ProgramResourcesTest < GrowsurfRuby::Test::ResourceTest
  def test_resource_is_attached
    assert_instance_of(GrowsurfRuby::Resources::Campaign::ProgramResources, @growsurf.campaign.resources)
  end

  def test_create_params_preserve_public_shape
    parsed, = GrowsurfRuby::Campaign::ProgramResourceCreateParams.dump_request(
      type: :LINK,
      title: "Partner guide",
      url: "https://example.com/guide"
    )

    assert_equal({type: :LINK, title: "Partner guide", url: "https://example.com/guide"}, parsed)
  end

  def test_models_use_epoch_milliseconds_and_opaque_scalar_upload_fields
    resource = GrowsurfRuby::Campaign::ProgramResource.new(
      id: "resource_abc123",
      type: :TEXT,
      title: "Launch notes",
      description: nil,
      category: nil,
      url: nil,
      text: "Welcome to Pied Piper.",
      file: nil,
      is_published: false,
      position: 0,
      created_at: 1_767_225_600_000,
      updated_at: 1_767_225_600_001
    )
    ticket = GrowsurfRuby::Campaign::ProgramResourceUploadTicket.new(
      ticket: "one-time-ticket",
      expires_in: 600,
      upload_url: "https://upload.example.com/file",
      upload_parameters: {signature: "signed", timestamp: 1_767_225_600, overwrite: false}
    )

    assert_equal(1_767_225_600_000, resource.created_at)
    assert_equal({signature: "signed", timestamp: 1_767_225_600, overwrite: false}, ticket.upload_parameters)
    refute_respond_to(ticket, :cloud_name)
  end

  def test_create_rejects_cross_type_fields_before_request
    error = assert_raises(ArgumentError) do
      @growsurf.campaign.resources.create(
        "program-id",
        type: :LINK,
        title: "Guide",
        url: "https://example.com/guide",
        text: "Guide"
      )
    end

    assert_match(/only one Program Resource type/, error.message)
  end

  def test_update_requires_the_upload_pair_before_request
    error = assert_raises(ArgumentError) do
      @growsurf.campaign.resources.update(
        "resource-id",
        id: "program-id",
        upload_ticket: "one-time-ticket"
      )
    end

    assert_match(/must be supplied together/, error.message)
  end

  def test_update_type_requires_replacement_content_before_request
    [:FILE, :LINK, :TEXT].each do |type|
      error = assert_raises(ArgumentError) do
        @growsurf.campaign.resources.update("resource-id", id: "program-id", type: type)
      end

      assert_match(/requires its replacement content/, error.message)
    end
  end

  def test_update_and_upload_ticket_enforce_public_bounds_before_request
    empty_error = assert_raises(ArgumentError) do
      @growsurf.campaign.resources.update("resource-id", id: "program-id")
    end
    assert_match(/requires at least one field/, empty_error.message)

    position_error = assert_raises(ArgumentError) do
      @growsurf.campaign.resources.update("resource-id", id: "program-id", position: 100)
    end
    assert_match(/position must be an integer from 0 through 99/, position_error.message)

    filename_error = assert_raises(ArgumentError) do
      @growsurf.campaign.resources.create_upload_ticket(
        "program-id",
        file_name: "#{'a' * 117}.pdf",
        mime_type: "application/pdf",
        bytes: 42
      )
    end
    assert_match(/file_name must contain 1 through 120 characters/, filename_error.message)
  end
end
