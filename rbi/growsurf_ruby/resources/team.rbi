# typed: strong

module GrowsurfRuby
  module Resources
    class Team
      # Retrieves the team bound to the API key or OAuth connection.
      # `verificationStatus` is `VERIFIED` once GrowSurf has verified the team, which is
      # required before a program can send participant emails.
      sig do
        params(request_options: GrowsurfRuby::RequestOptions::OrHash).returns(
          GrowsurfRuby::Models::Team
        )
      end
      def retrieve(request_options: {})
      end

      # Updates the name of the team bound to the API key or OAuth connection. Any other
      # property is rejected with a `400`. Personal profiles, billing, and team
      # ownership are not editable here.
      sig do
        params(
          name: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(GrowsurfRuby::Models::Team)
      end
      def update(name:, request_options: {})
      end

      # Generates a new API key and makes the key used on this request stop working when
      # rotation succeeds. Send a unique, random `Idempotency-Key`. If the response is
      # interrupted, immediately retry with the original API key and the same
      # `Idempotency-Key` to receive the same new key. Update every integration that
      # used the old key. The team owner is notified by email whenever the key is
      # rotated. GrowSurf SDKs generate the idempotency key automatically. This endpoint
      # accepts an API key with `api_key:rotate`. If this scope is unavailable, rotate
      # the key in the authenticated dashboard instead. This operation is available only
      # through the REST API or a GrowSurf API SDK, not through MCP.
      sig do
        params(request_options: GrowsurfRuby::RequestOptions::OrHash).returns(
          GrowsurfRuby::Models::TeamRotateAPIKeyResponse
        )
      end
      def rotate_api_key(request_options: {})
      end

      # Requests GrowSurf to verify the bound team (required before a program can email
      # its participants). Idempotent — calling it again while a request is pending does
      # not create a duplicate. Returns the team with its updated `verificationStatus`.
      sig do
        params(request_options: GrowsurfRuby::RequestOptions::OrHash).returns(
          GrowsurfRuby::Models::Team
        )
      end
      def request_verification(request_options: {})
      end

      # Resends the email-verification message to the bound team's owner. The response
      # never reveals the owner's email address. A `200` with `status: SENT` is returned
      # only when an email was actually dispatched. Returns `400` if the email is
      # already verified, and `429` if a verification email was sent too recently — wait
      # a moment, then retry.
      sig do
        params(request_options: GrowsurfRuby::RequestOptions::OrHash).returns(
          GrowsurfRuby::Models::TeamResendOwnerVerificationEmailResponse
        )
      end
      def resend_owner_verification_email(request_options: {})
      end

      sig { params(client: GrowsurfRuby::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
