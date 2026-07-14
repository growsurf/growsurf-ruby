# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      class Installation
        # Retrieves a program's installation configuration — the same surface as the
        # dashboard Program Editor's **Installation** tab (plus the Mobile SDK settings).
        # Includes the referral trigger (referral programs only), signup tracking method,
        # share URL and whitelist, custom-form signup settings, and mobile SDK settings.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Hash{Symbol=>Object}]
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["campaign/%1$s/installation", id],
            model: GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown],
            options: params[:request_options]
          )
        end

        # Updates a program's installation configuration. Only the fields you send are
        # changed; omitted fields are left untouched. `referralTrigger` is only available
        # for referral programs. `mobile.publicKey` is read-only; if no key exists yet,
        # enabling `mobile.isEnabled` creates one. Changing `shareUrl` re-resolves its
        # redirect destinations, which may take a moment to complete. URLs must include an
        # explicit `http://` or `https://` scheme.
        #
        # @overload update(id, body, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param body [Hash{Symbol=>Object}] Partial installation configuration to merge.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Hash{Symbol=>Object}]
        def update(id, body, params = {})
          @client.request(
            method: :patch,
            path: ["campaign/%1$s/installation", id],
            body: body,
            model: GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown],
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
end
