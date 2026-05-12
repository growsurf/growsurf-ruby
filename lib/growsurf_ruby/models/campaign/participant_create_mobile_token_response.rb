# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#create_mobile_token
      class ParticipantCreateMobileTokenResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute expires_in
        #   Token lifetime in seconds.
        #
        #   @return [Integer]
        required :expires_in, Integer, api_name: :expiresIn

        # @!attribute participant_token
        #   Participant-scoped bearer token for GrowSurf mobile SDK participant endpoints.
        #
        #   @return [String]
        required :participant_token, String, api_name: :participantToken

        # @!method initialize(expires_in:, participant_token:)
        #   @param expires_in [Integer] Token lifetime in seconds.
        #
        #   @param participant_token [String] Participant-scoped bearer token for GrowSurf mobile SDK participant endpoints.
      end
    end
  end
end
