# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Reward#delete
      class RewardDeleteParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute campaign_reward_id
        #
        #   @return [String]
        required :campaign_reward_id, String

        # @!method initialize(id:, campaign_reward_id:, request_options: {})
        #   @param id [String]
        #   @param campaign_reward_id [String]
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
