# typed: strong

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
        sig do
          params(
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::IntegrationListResponse)
        end
        def list(
          # GrowSurf program ID.
          id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: GrowsurfRuby::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
