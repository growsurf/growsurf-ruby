# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#send_invites
      class ParticipantSendInvitesResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute invites_sent
        #
        #   @return [Integer]
        required :invites_sent, Integer, api_name: :invitesSent

        # @!attribute message_type
        #
        #   @return [String]
        required :message_type, String, api_name: :messageType

        # @!attribute success
        #
        #   @return [Boolean]
        required :success, GrowsurfRuby::Internal::Type::Boolean

        # @!attribute message
        #   Human-readable detail for the result. Empty when there is nothing to add.
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(invites_sent:, message_type:, success:, message: nil)
        #   @param invites_sent [Integer]
        #
        #   @param message_type [String]
        #
        #   @param success [Boolean]
        #
        #   @param message [String] Human-readable detail for the result. Empty when there is nothing to add.
      end
    end
  end
end
