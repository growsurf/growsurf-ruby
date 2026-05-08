# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Reward#delete
      class RewardDeleteResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute success
        #
        #   @return [Boolean]
        required :success, GrowsurfRuby::Internal::Type::Boolean

        # @!method initialize(success:)
        #   @param success [Boolean]
      end
    end
  end
end
