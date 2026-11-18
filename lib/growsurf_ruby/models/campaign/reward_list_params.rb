# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Rewards#list
      class RewardListParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # Return only this group's rewards. To get Default's rewards, omit `groupId`
        # and keep the rewards whose `groupId` is `null`. An ID that is not a group in this program
        # returns `404`.
        optional :group_id, String
      end
    end
  end
end
