# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#bulk_move
      class ParticipantBulkMoveParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        required :id, String
        # GrowSurf participant IDs and/or email addresses to move. Mixed entries are
        # allowed. 1 to 200 entries.
        required :participants, GrowsurfRuby::Internal::Type::ArrayOf[String]
        # The group to move them to (`grp_…`), or `nil` for Default.
        required :group_id, String, api_name: :groupId, nil?: true
      end
    end
  end
end
