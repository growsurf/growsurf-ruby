# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Rewards#list
      class CampaignRewardListResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute rewards
        #   The program's active, visible, and enabled rewards.
        #
        #   @return [Array<GrowsurfRuby::Models::Campaign::Reward>]
        required :rewards, -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::Reward] }

        # @!method initialize(rewards:)
        #   The list of a program's configured rewards.
        #
        #   @param rewards [Array<GrowsurfRuby::Models::Campaign::Reward>] The program's active, visible, and enabled rewards.
      end
    end
  end
end
