# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Rewards#delete
      class DeleteRewardResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute id
        #   The deleted reward ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute success
        #
        #   @return [Boolean]
        required :success, GrowsurfRuby::Internal::Type::Boolean

        # @!method initialize(id:, success:)
        #   @param id [String] The deleted reward ID.
        #
        #   @param success [Boolean]
      end
    end
  end
end
