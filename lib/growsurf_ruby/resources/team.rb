# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Team
      # Retrieves the team bound to the API key or OAuth connection.
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

      # Updates the name of the team bound to the API key or OAuth connection. Any
      # other property is rejected with a `400`.
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

      # Generates a new API key and makes the key used on this request stop working
      # when rotation succeeds. The SDK sends a retry-safe `Idempotency-Key`, so
      # automatic retries return the same replacement. Store the new key, then update
      # every integration that used the old key. This operation is unavailable through
      # MCP.
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

      # Requests GrowSurf verification for the bound team. Calling this again while a
      # request is pending does not create a duplicate.
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
      # never reveals the owner's email address.
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
