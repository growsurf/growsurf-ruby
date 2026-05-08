# frozen_string_literal: true

module Growsurf
  module Models
    # @see Growsurf::Resources::Campaign#list_leaderboard
    class ParticipantList < Growsurf::Internal::Type::BaseModel
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
      #   @return [Array<Growsurf::Models::Campaign::CampaignParticipant>]
      required :participants, -> { Growsurf::Internal::Type::ArrayOf[Growsurf::Campaign::CampaignParticipant] }

      # @!method initialize(limit:, next_id:, participants:)
      #   @param limit [Integer]
      #   @param next_id [String, nil]
      #   @param participants [Array<Growsurf::Models::Campaign::CampaignParticipant>]
    end
  end
end
