# frozen_string_literal: true

require_relative "../test_helper"

class GrowsurfRuby::Test::Resources::TeamContractTest < Minitest::Test
  extend Minitest::Serial
  include WebMock::API

  def setup
    super
    WebMock.enable!
    @base_url = "http://localhost"
    @growsurf = GrowsurfRuby::Client.new(base_url: @base_url, api_key: "My API Key")
  end

  def teardown
    WebMock.reset!
    WebMock.disable!
    super
  end

  def test_final_team_request_paths
    team = {
      name: "Pied Piper",
      verificationStatus: "VERIFIED",
      verificationRequestedAt: 1_719_792_000_000
    }
    stub_request(:get, "#{@base_url}/team").to_return_json(status: 200, body: team)
    stub_request(:patch, "#{@base_url}/team").to_return_json(status: 200, body: team)
    stub_request(:post, "#{@base_url}/team/verification-request").to_return_json(status: 200, body: team)
    stub_request(:post, "#{@base_url}/team/owner/verification-email").to_return_json(
      status: 200,
      body: {success: true, status: "SENT"}
    )
    stub_request(:post, "#{@base_url}/api-key/rotate").to_return_json(
      status: 200,
      body: {apiKey: "sk_api_replacement"}
    )

    assert_equal("Pied Piper", @growsurf.team.retrieve.name)
    @growsurf.team.update(name: "Pied Piper Labs")
    @growsurf.team.request_verification
    @growsurf.team.resend_owner_verification_email
    assert_equal("sk_api_replacement", @growsurf.team.rotate_api_key.api_key)

    assert_requested(:get, "#{@base_url}/team")
    assert_requested(:patch, "#{@base_url}/team", body: {name: "Pied Piper Labs"})
    assert_requested(:post, "#{@base_url}/team/verification-request")
    assert_requested(:post, "#{@base_url}/team/owner/verification-email")
    assert_requested(:post, "#{@base_url}/api-key/rotate")
  end

  def test_safe_team_and_onboarding_models
    team_model = GrowsurfRuby::Models.const_get(:Team)

    assert_equal([:name, :verification_requested_at, :verification_status], team_model.fields.keys.sort)
    assert_equal(
      [:api_key, :email, :verification_status],
      GrowsurfRuby::Models::AccountCreateResponse.fields.keys.sort
    )
  end
end
