# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      # @see Growsurf::Resources::Campaign::Participant#list_rewards
      class ParticipantListRewardsResponse < Growsurf::Internal::Type::BaseModel
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
        #   @return [Array<Growsurf::Models::Campaign::ParticipantReward>]
        required :rewards, -> { Growsurf::Internal::Type::ArrayOf[Growsurf::Campaign::ParticipantReward] }

        # @!method initialize(limit:, next_id:, rewards:)
        #   @param limit [Integer]
        #   @param next_id [String, nil]
        #   @param rewards [Array<Growsurf::Models::Campaign::ParticipantReward>]
      end
    end
  end
end
