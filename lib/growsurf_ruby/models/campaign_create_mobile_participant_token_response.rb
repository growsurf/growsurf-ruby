# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#create_mobile_participant_token
    class CampaignCreateMobileParticipantTokenResponse < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute expires_in
      #   Token lifetime in seconds.
      #
      #   @return [Integer]
      required :expires_in, Integer, api_name: :expiresIn

      # @!attribute is_new
      #   Whether this request created a new participant. Returns false when the
      #   participant already existed.
      #
      #   @return [Boolean]
      required :is_new, GrowsurfRuby::Internal::Type::Boolean, api_name: :isNew

      # @!attribute participant
      #
      #   @return [GrowsurfRuby::Models::Campaign::CampaignParticipant]
      required :participant, -> { GrowsurfRuby::Campaign::CampaignParticipant }

      # @!attribute participant_token
      #   Participant-scoped bearer token for GrowSurf mobile SDK participant endpoints.
      #
      #   @return [String]
      required :participant_token, String, api_name: :participantToken

      # @!method initialize(expires_in:, is_new:, participant:, participant_token:)
      #   Some parameter documentations has been truncated, see
      #   {GrowsurfRuby::Models::CampaignCreateMobileParticipantTokenResponse} for more
      #   details.
      #
      #   @param expires_in [Integer] Token lifetime in seconds.
      #
      #   @param is_new [Boolean] Whether this request created a new participant. Returns false when the participa
      #
      #   @param participant [GrowsurfRuby::Models::Campaign::CampaignParticipant]
      #
      #   @param participant_token [String] Participant-scoped bearer token for GrowSurf mobile SDK participant endpoints.
    end
  end
end
