# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      # @see Growsurf::Resources::Campaign::Reward#fulfill
      class RewardFulfillParams < Growsurf::Internal::Type::BaseModel
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

        # @!method initialize(id:, reward_id:, request_options: {})
        #   @param id [String]
        #   @param reward_id [String]
        #   @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
