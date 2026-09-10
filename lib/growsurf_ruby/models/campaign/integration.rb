# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Integrations#list
      class Integration < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute id
        #   Stable integration key, the same value the GrowSurf dashboard uses for this
        #   integration.
        #
        #   @return [String]
        required :id, String

        # @!attribute auto_disabled
        #   Whether GrowSurf switched the integration off after repeated delivery failures.
        #   Its credentials are still stored, but it delivers nothing until it is
        #   reconnected in the GrowSurf dashboard.
        #
        #   @return [Boolean]
        required :auto_disabled, GrowsurfRuby::Internal::Type::Boolean, api_name: :autoDisabled

        # @!attribute connect_url
        #   Dashboard link that opens this integration's connect panel in the GrowSurf Program
        #   Editor. Give it to the person running the program: connecting an account is a step they
        #   complete in the dashboard, and the API cannot do it for them.
        #
        #   @return [String]
        required :connect_url, String, api_name: :connectUrl

        # @!attribute connected
        #   Whether the program has stored credentials for this integration.
        #
        #   @return [Boolean]
        required :connected, GrowsurfRuby::Internal::Type::Boolean

        # @!attribute enabled
        #   Whether the integration is switched on and currently working.
        #
        #   @return [Boolean]
        required :enabled, GrowsurfRuby::Internal::Type::Boolean

        # @!attribute name
        #   Display name, matching what the GrowSurf dashboard calls this integration.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, auto_disabled:, connect_url:, connected:, enabled:, name:)
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::Campaign::Integration} for more details.
        #
        #   One integration a program can connect, with its current state.
        #
        #   @param id [String] Stable integration key, the same value the GrowSurf dashboard uses for this integ
        #
        #   @param auto_disabled [Boolean] Whether GrowSurf switched the integration off after repeated delivery failures. I
        #
        #   @param connect_url [String] Dashboard link that opens this integration's connect panel in the GrowSurf Progra
        #
        #   @param connected [Boolean] Whether the program has stored credentials for this integration.
        #
        #   @param enabled [Boolean] Whether the integration is switched on and currently working.
        #
        #   @param name [String] Display name, matching what the GrowSurf dashboard calls this integration.
      end
    end
  end
end
