# typed: strong

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
      sig do
        params(
          email: String,
          company: String,
          first_name: String,
          last_name: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(GrowsurfRuby::Models::AccountCreateResponse)
      end
      def create(
        # The email address for the new account. Personal emails and disposable email addresses are not accepted.
        email:,
        company: nil,
        first_name: nil,
        last_name: nil,
        request_options: {}
      )
      end

      # Retrieves the account that owns the API key: profile and GrowSurf-team
      # verification state.
      # `verificationStatus` is `VERIFIED` once the GrowSurf team has verified the account
      # — this is required before you can send participant emails from a program.
      sig do
        params(request_options: GrowsurfRuby::RequestOptions::OrHash).returns(
          GrowsurfRuby::Account
        )
      end
      def retrieve(request_options: {})
      end

      # Updates your own account profile (`firstName`, `lastName`, `company`). Any other
      # property is rejected with a `400` — in particular, the account `email` cannot be
      # changed via the API, and billing/subscription is not editable here.
      sig do
        params(
          company: String,
          first_name: String,
          last_name: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(GrowsurfRuby::Account)
      end
      def update(
        company: nil,
        first_name: nil,
        last_name: nil,
        request_options: {}
      )
      end

      # Generates a new API key and invalidates the key used for the request. The SDK
      # sends a retry-safe `Idempotency-Key`, so automatic retries return the same
      # replacement. Store the returned key, then update every integration that used
      # the old key. The account owner is notified by email whenever the key is rotated.
      # Requires an API key with `api_key:rotate`. This operation is available only through
      # the REST API or a GrowSurf API SDK, not through MCP.
      sig do
        params(request_options: GrowsurfRuby::RequestOptions::OrHash).returns(
          GrowsurfRuby::Models::AccountRotateAPIKeyResponse
        )
      end
      def rotate_api_key(request_options: {})
      end

      # Requests GrowSurf-team verification of your account (required before a program can
      # email its participants). Idempotent — calling it again while a request is pending
      # does not create a duplicate. Returns the account with its updated
      # `verificationStatus`.
      sig do
        params(request_options: GrowsurfRuby::RequestOptions::OrHash).returns(
          GrowsurfRuby::Account
        )
      end
      def request_verification(request_options: {})
      end

      # Resends the email-verification email to the account's email address. A `200`
      # with `status: SENT` is only returned when an email was actually dispatched.
      # Returns a `400` if the email is already verified, or a `429` if a verification
      # email was sent too recently — wait a moment, then retry.
      sig do
        params(request_options: GrowsurfRuby::RequestOptions::OrHash).returns(
          GrowsurfRuby::Models::AccountResendVerificationEmailResponse
        )
      end
      def resend_verification_email(request_options: {})
      end

      # @api private
      sig { params(client: GrowsurfRuby::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
