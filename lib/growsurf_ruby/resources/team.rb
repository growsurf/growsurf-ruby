# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Team
      # Retrieves the team bound to the API key or OAuth connection.
      # `verificationStatus` is `VERIFIED` once GrowSurf has verified the team, which is
      # required before a program can send participant emails.
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::Team]
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "team",
          model: GrowsurfRuby::Models::Team,
          options: params[:request_options]
        )
      end

      # Updates the name of the team bound to the API key or OAuth connection. Any other
      # property is rejected with a `400`. Personal profiles, billing, and team
      # ownership are not editable here.
      #
      # @overload update(name:, request_options: {})
      #
      # @param name [String] The team's display name.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::Team]
      #
      # @see GrowsurfRuby::Models::TeamUpdateParams
      def update(params)
        parsed, options = GrowsurfRuby::TeamUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "team",
          body: parsed,
          model: GrowsurfRuby::Models::Team,
          options: options
        )
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
      #
      # @overload rotate_api_key(request_options: {})
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::TeamRotateAPIKeyResponse]
      def rotate_api_key(params = {})
        @client.request(
          method: :post,
          path: "api-key/rotate",
          model: GrowsurfRuby::Models::TeamRotateAPIKeyResponse,
          options: params[:request_options]
        )
      end

      # Requests GrowSurf to verify the bound team (required before a program can email
      # its participants). Idempotent — calling it again while a request is pending does
      # not create a duplicate. Returns the team with its updated `verificationStatus`.
      #
      # @overload request_verification(request_options: {})
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::Team]
      def request_verification(params = {})
        @client.request(
          method: :post,
          path: "team/verification-request",
          model: GrowsurfRuby::Models::Team,
          options: params[:request_options]
        )
      end

      # Resends the email-verification message to the bound team's owner. The response
      # never reveals the owner's email address. A `200` with `status: SENT` is returned
      # only when an email was actually dispatched. Returns `400` if the email is
      # already verified, and `429` if a verification email was sent too recently — wait
      # a moment, then retry.
      #
      # @overload resend_owner_verification_email(request_options: {})
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::TeamResendOwnerVerificationEmailResponse]
      def resend_owner_verification_email(params = {})
        @client.request(
          method: :post,
          path: "team/owner/verification-email",
          model: GrowsurfRuby::Models::TeamResendOwnerVerificationEmailResponse,
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
