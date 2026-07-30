# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#request_payout_destination_confirmation
      class ParticipantRequestPayoutDestinationConfirmationResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute expires_at
        #   When the confirmation link expires, as a Unix timestamp in milliseconds.
        #
        #   @return [Integer, nil]
        optional :expires_at, Integer, api_name: :expiresAt, nil?: true

        # @!attribute provider
        #   The provider the participant was asked to confirm.
        #
        #   @return [String, nil]
        optional :provider, String

        # @!attribute provider_display_name
        #   The customer-facing provider name (e.g. "PayPal", "Wise").
        #
        #   @return [String, nil]
        optional :provider_display_name, String, api_name: :providerDisplayName

        # @!attribute status
        #   Confirms the message was requested.
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRequestPayoutDestinationConfirmationResponse::Status, nil]
        optional :status,
                 enum: -> { GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationResponse::Status }

        # @!method initialize(expires_at: nil, provider: nil, provider_display_name: nil, status: nil)
        #   @param expires_at [Integer, nil] When the confirmation link expires, as a Unix timestamp in milliseconds.
        #
        #   @param provider [String] The provider the participant was asked to confirm.
        #
        #   @param provider_display_name [String] The customer-facing provider name (e.g. "PayPal", "Wise").
        #
        #   @param status [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRequestPayoutDestinationConfirmationResponse::Status] Confirms the message was requested.

        # Confirms the message was requested.
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantRequestPayoutDestinationConfirmationResponse#status
        module Status
          extend GrowsurfRuby::Internal::Type::Enum

          CONFIRMATION_REQUESTED = :CONFIRMATION_REQUESTED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
