# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#list_leaderboard
    class ParticipantList < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute limit
      #
      #   @return [Integer]
      required :limit, Integer

      # @!attribute next_id
      #
      #   @return [String, nil]
      required :next_id, String, api_name: :nextId, nil?: true

      # @!attribute participants
      #
      #   @return [Array<GrowsurfRuby::Models::Campaign::CampaignParticipant>]
      required :participants,
               -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::CampaignParticipant] }

      # @!method initialize(limit:, next_id:, participants:)
      #   @param limit [Integer]
      #   @param next_id [String, nil]
      #   @param participants [Array<GrowsurfRuby::Models::Campaign::CampaignParticipant>]
    end
  end
end
