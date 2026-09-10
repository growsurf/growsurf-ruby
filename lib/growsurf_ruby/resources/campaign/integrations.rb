# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      class Integrations
        # Lists every integration this program can connect, each with its current state.
        # Integrations that do not apply to the program type are omitted (for example,
        # Wise on a referral program). Read-only: connecting an integration is an OAuth or
        # credential handshake completed in the GrowSurf dashboard, so it cannot be done
        # over the API. `connected` means credentials are stored, `enabled` means the
        # integration is switched on and working, and `autoDisabled` means GrowSurf
        # switched it off after repeated delivery failures — its credentials are still
        # stored, but it delivers nothing until it is reconnected in the dashboard.
        #
        # @overload list(id, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::IntegrationListResponse]
        def list(id, params = {})
          @client.request(
            method: :get,
            path: ["campaign/%1$s/integrations", id],
            model: GrowsurfRuby::Models::Campaign::IntegrationListResponse,
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
