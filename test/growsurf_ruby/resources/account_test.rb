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
        id: String,
        verification_status: GrowsurfRuby::Models::AccountCreateResponse::VerificationStatus
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @growsurf.account.retrieve

    assert_pattern do
      response => GrowsurfRuby::Account
    end

    assert_pattern do
      response => {
        email: String,
        id: String,
        verification_status: GrowsurfRuby::Account::VerificationStatus,
        company: String | nil,
        created_at: Integer | nil,
        first_name: String | nil,
        last_name: String | nil,
        verification_requested_at: Integer | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @growsurf.account.update

    assert_pattern do
      response => GrowsurfRuby::Account
    end

    assert_pattern do
      response => {
        email: String,
        id: String,
        verification_status: GrowsurfRuby::Account::VerificationStatus,
        company: String | nil,
        created_at: Integer | nil,
        first_name: String | nil,
        last_name: String | nil,
        verification_requested_at: Integer | nil
      }
    end
  end

  def test_rotate_api_key
    skip("Mock server tests are disabled")

    response = @growsurf.account.rotate_api_key

    assert_pattern do
      response => GrowsurfRuby::Models::AccountRotateAPIKeyResponse
    end

    assert_pattern do
      response => {
        api_key: String
      }
    end
  end

  def test_request_verification
    skip("Mock server tests are disabled")

    response = @growsurf.account.request_verification

    assert_pattern do
      response => GrowsurfRuby::Account
    end

    assert_pattern do
      response => {
        email: String,
        id: String,
        verification_status: GrowsurfRuby::Account::VerificationStatus,
        company: String | nil,
        created_at: Integer | nil,
        first_name: String | nil,
        last_name: String | nil,
        verification_requested_at: Integer | nil
      }
    end
  end

  def test_resend_verification_email
    skip("Mock server tests are disabled")

    response = @growsurf.account.resend_verification_email

    assert_pattern do
      response => GrowsurfRuby::Models::AccountResendVerificationEmailResponse
    end

    assert_pattern do
      response => {
        status: GrowsurfRuby::Models::AccountResendVerificationEmailResponse::Status,
        success: GrowsurfRuby::Internal::Type::Boolean
      }
    end
  end
end
