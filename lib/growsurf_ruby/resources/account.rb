# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Account
      # Creates a new GrowSurf account. This is the only endpoint that does not require
      # an API key. The response includes an API key for the new account, shown once
      # in the response. The key is locked until the account's email address is
      # verified: authenticated endpoints outside the `Accounts` group return a `403`
      # with error code
      # `EMAIL_NOT_VERIFIED_ERROR` until then (resend the email via `POST
      # /account/verification-email`, then retry). A welcome email is sent to the
      # address with the verification link and a set-password link for dashboard
      # access. Accounts whose email is never verified are deleted automatically after
      # 7 days. For security, the API key is rotated the first time the account owner
      # signs in to the GrowSurf dashboard. Some actions (such as emailing
      # participants) additionally require the GrowSurf team to verify the account
      # first. By creating an account you agree, on behalf of the account holder, to
      # GrowSurf's [Terms of Service](https://growsurf.com/terms) and
      # [Privacy Policy](https://growsurf.com/privacy).
      #
      # @overload create(email:, company: nil, first_name: nil, last_name: nil, request_options: {})
      #
      # @param email [String] The email address for the new account. Personal emails and disposable email addresses are not accepted.
      #
      # @param company [String]
      #
      # @param first_name [String]
      #
      # @param last_name [String]
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::AccountCreateResponse]
      #
      # @see GrowsurfRuby::Models::AccountCreateParams
      def create(params)
        parsed, options = GrowsurfRuby::AccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "accounts",
          body: parsed,
          model: GrowsurfRuby::Models::AccountCreateResponse,
          options: options
        )
      end

      # Retrieves the account that owns the API key: profile and GrowSurf-team
      # verification state.
      # `verificationStatus` is `VERIFIED` once the GrowSurf team has verified the account
      # — this is required before you can send participant emails from a program.
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::Account]
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "account",
          model: GrowsurfRuby::Account,
          options: params[:request_options]
        )
      end

      # Updates your own account profile (`firstName`, `lastName`, `company`). Any other
      # property is rejected with a `400` — in particular, the account `email` cannot be
      # changed via the API, and billing/subscription is not editable here.
      #
      # @overload update(company: nil, first_name: nil, last_name: nil, request_options: {})
      #
      # @param company [String]
      #
      # @param first_name [String]
      #
      # @param last_name [String]
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::Account]
      #
      # @see GrowsurfRuby::Models::AccountUpdateParams
      def update(params = {})
        parsed, options = GrowsurfRuby::AccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "account",
          body: parsed,
          model: GrowsurfRuby::Account,
          options: options
        )
      end

      # Generates a new API key and invalidates the key used for the request. The SDK
      # sends a retry-safe `Idempotency-Key`, so automatic retries return the same
      # replacement. Store the returned key, then update every integration that used
      # the old key. The account owner is notified by email whenever the key is rotated.
      # Requires an API key with `api_key:rotate`. This operation is available only through
      # the REST API or a GrowSurf API SDK, not through MCP.
      #
      # @overload rotate_api_key(request_options: {})
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::AccountRotateAPIKeyResponse]
      def rotate_api_key(params = {})
        @client.request(
          method: :post,
          path: "account/api-key",
          model: GrowsurfRuby::Models::AccountRotateAPIKeyResponse,
          options: params[:request_options]
        )
      end

      # Requests GrowSurf-team verification of your account (required before a program can
      # email its participants). Idempotent — calling it again while a request is pending
      # does not create a duplicate. Returns the account with its updated
      # `verificationStatus`.
      #
      # @overload request_verification(request_options: {})
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::Account]
      def request_verification(params = {})
        @client.request(
          method: :post,
          path: "account/verification-request",
          model: GrowsurfRuby::Account,
          options: params[:request_options]
        )
      end

      # Resends the email-verification email to the account's email address. A `200`
      # with `status: SENT` is only returned when an email was actually dispatched.
      # Returns a `400` if the email is already verified, or a `429` if a verification
      # email was sent too recently — wait a moment, then retry.
      #
      # @overload resend_verification_email(request_options: {})
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::AccountResendVerificationEmailResponse]
      def resend_verification_email(params = {})
        @client.request(
          method: :post,
          path: "account/verification-email",
          model: GrowsurfRuby::Models::AccountResendVerificationEmailResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [GrowsurfRuby::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
