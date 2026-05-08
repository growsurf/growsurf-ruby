# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      # @see Growsurf::Resources::Campaign::Participant#send_invites
      class ParticipantSendInvitesParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute participant_id_or_email
        #
        #   @return [String]
        required :participant_id_or_email, String

        # @!attribute email_addresses
        #
        #   @return [Array<String>]
        required :email_addresses, Growsurf::Internal::Type::ArrayOf[String], api_name: :emailAddresses

        # @!attribute message_text
        #
        #   @return [String]
        required :message_text, String, api_name: :messageText

        # @!attribute subject_text
        #
        #   @return [String]
        required :subject_text, String, api_name: :subjectText

        # @!method initialize(id:, participant_id_or_email:, email_addresses:, message_text:, subject_text:, request_options: {})
        #   @param id [String]
        #   @param participant_id_or_email [String]
        #   @param email_addresses [Array<String>]
        #   @param message_text [String]
        #   @param subject_text [String]
        #   @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
