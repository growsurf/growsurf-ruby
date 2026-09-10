# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Integrations#list
      class IntegrationListResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute integrations
        #   Every integration this program can connect, in the order the GrowSurf dashboard
        #   lists them.
        #
        #   @return [Array<GrowsurfRuby::Models::Campaign::Integration>]
        required :integrations,
                 -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::Integration] }

        # @!method initialize(integrations:)
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::Campaign::IntegrationListResponse} for more details.
        #
        #   @param integrations [Array<GrowsurfRuby::Models::Campaign::Integration>] Every integration this program can connect, in the order the GrowSurf dashboard l
      end
    end
  end
end
