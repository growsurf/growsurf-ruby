# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#list_rewards
      class ParticipantListRewardsResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute limit
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute next_id
        #
        #   @return [String, nil]
        required :next_id, String, api_name: :nextId, nil?: true

        # @!attribute rewards
        #
        #   @return [Array<GrowsurfRuby::Models::Campaign::ParticipantReward>]
        required :rewards, -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::ParticipantReward] }

        # @!method initialize(limit:, next_id:, rewards:)
        #   @param limit [Integer]
        #   @param next_id [String, nil]
        #   @param rewards [Array<GrowsurfRuby::Models::Campaign::ParticipantReward>]
      end
    end
  end
end
