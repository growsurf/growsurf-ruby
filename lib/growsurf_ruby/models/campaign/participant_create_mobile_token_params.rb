# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#create_mobile_token
      class ParticipantCreateMobileTokenParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute participant_id_or_email
        #
        #   @return [String]
        required :participant_id_or_email, String

        # @!method initialize(id:, participant_id_or_email:, request_options: {})
        #   @param id [String]
        #   @param participant_id_or_email [String]
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
