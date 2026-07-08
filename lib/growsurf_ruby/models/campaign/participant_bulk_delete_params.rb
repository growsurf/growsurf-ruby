# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#bulk_delete
      class ParticipantBulkDeleteParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute participants
        #   GrowSurf participant IDs and/or email addresses to delete. Mixed entries are
        #   allowed.
        #
        #   @return [Array<String>]
        required :participants, GrowsurfRuby::Internal::Type::ArrayOf[String]

        # @!method initialize(id:, participants:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteParams} for more details.
        #
        #   @param id [String]
        #
        #   @param participants [Array<String>] GrowSurf participant IDs and/or email addresses to delete. Mixed entries are al
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
