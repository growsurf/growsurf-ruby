# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#create_mobile_participant_token
    class CampaignCreateMobileParticipantTokenParams < GrowsurfRuby::Models::Campaign::Create
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:, request_options: {})
      #   @param id [String]
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
