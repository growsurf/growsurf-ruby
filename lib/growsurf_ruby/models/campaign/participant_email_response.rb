# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#email
      class ParticipantEmailResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute status
        #   The email was accepted for delivery.
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantEmailResponse::Status]
        required :status, enum: -> { GrowsurfRuby::Campaign::ParticipantEmailResponse::Status }

        # @!attribute success
        #
        #   @return [Boolean]
        required :success, GrowsurfRuby::Internal::Type::Boolean

        # @!method initialize(status:, success:)
        #   @param status [Symbol, GrowsurfRuby::Models::Campaign::ParticipantEmailResponse::Status] The email was accepted for delivery.
        #
        #   @param success [Boolean]

        # The email was accepted for delivery.
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantEmailResponse#status
        module Status
          extend GrowsurfRuby::Internal::Type::Enum

          QUEUED = :queued

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
