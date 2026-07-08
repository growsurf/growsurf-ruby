# frozen_string_literal: true

require_relative "../../test_helper"

class GrowsurfRuby::Test::Resources::Campaign::WebhooksTest < GrowsurfRuby::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.webhooks.list("id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::WebhookListResponse
    end

    assert_pattern do
      response => {
        webhooks: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::Webhook])
      }
    end
  end

  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.webhooks.create("id", payload_url: "https://hooks.piedpiper.com/growsurf")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::Webhook
    end

    assert_pattern do
      response => {
        auto_disabled_due_to_failures: GrowsurfRuby::Internal::Type::Boolean,
        events: ^(GrowsurfRuby::Internal::Type::ArrayOf[enum: GrowsurfRuby::Campaign::WebhookEvent]),
        failure_count: Integer,
        id: String,
        is_enabled: GrowsurfRuby::Internal::Type::Boolean,
        last_failure_at: Integer | nil,
        payload_url: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.webhooks.update("webhookId", id: "id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::Webhook
    end

    assert_pattern do
      response => {
        auto_disabled_due_to_failures: GrowsurfRuby::Internal::Type::Boolean,
        events: ^(GrowsurfRuby::Internal::Type::ArrayOf[enum: GrowsurfRuby::Campaign::WebhookEvent]),
        failure_count: Integer,
        id: String,
        is_enabled: GrowsurfRuby::Internal::Type::Boolean,
        last_failure_at: Integer | nil,
        payload_url: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.webhooks.delete("webhookId", id: "id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::WebhookDeleteResponse
    end

    assert_pattern do
      response => {
        id: String,
        success: GrowsurfRuby::Internal::Type::Boolean
      }
    end
  end

  def test_test_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.webhooks.test("webhookId", id: "id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::WebhookTestResponse
    end

    assert_pattern do
      response => {
        success: GrowsurfRuby::Internal::Type::Boolean,
        payload: ^(GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]) | nil,
        response: GrowsurfRuby::Models::Campaign::WebhookTestResponse::Response | nil
      }
    end
  end
end
