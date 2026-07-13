# frozen_string_literal: true

require_relative "../test_helper"

class GrowsurfRuby::Test::Resources::AccountTest < GrowsurfRuby::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.account.create(email: "richard@piedpiper.com")

    assert_pattern do
      response => GrowsurfRuby::Models::AccountCreateResponse
    end

    assert_pattern do
      response => {
        api_key: String,
        email: String,
        verification_status: GrowsurfRuby::Models::AccountCreateResponse::VerificationStatus
      }
    end
  end
end
