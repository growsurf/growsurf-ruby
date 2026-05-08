# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      # @see Growsurf::Resources::Campaign::Reward#approve
      class RewardApproveParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute reward_id
        #
        #   @return [String]
        required :reward_id, String

        # @!attribute fulfill
        #   Set true to mark the reward as fulfilled after approval.
        #
        #   @return [Boolean, nil]
        optional :fulfill, Growsurf::Internal::Type::Boolean

        # @!method initialize(id:, reward_id:, fulfill: nil, request_options: {})
        #   @param id [String]
        #
        #   @param reward_id [String]
        #
        #   @param fulfill [Boolean] Set true to mark the reward as fulfilled after approval.
        #
        #   @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
