# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      # @see Growsurf::Resources::Campaign::Participant#send_invites
      class ParticipantSendInvitesResponse < Growsurf::Internal::Type::BaseModel
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
        required :success, Growsurf::Internal::Type::Boolean

        # @!method initialize(invites_sent:, message_type:, success:)
        #   @param invites_sent [Integer]
        #   @param message_type [String]
        #   @param success [Boolean]
      end
    end
  end
end
