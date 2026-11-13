# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#request_payout_destination_confirmation
      class ParticipantRequestPayoutDestinationConfirmationParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute participant_id_or_email
        #
        #   @return [String]
        required :participant_id_or_email, String

        # @!attribute provider
        #   The payout provider the participant should confirm a destination for. `VENMO` uses a confirmed email and is available only when connected PayPal Payouts and payout-email confirmation are enabled in a USD program. Venmo recipients must be in the United States.
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRequestPayoutDestinationConfirmationParams::Provider]
        required :provider,
                 enum: -> { GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationParams::Provider }

        # @!method initialize(id:, participant_id_or_email:, provider:, request_options: {})
        #   @param id [String]
        #
        #   @param participant_id_or_email [String]
        #
        #   @param provider [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRequestPayoutDestinationConfirmationParams::Provider] The payout provider the participant should confirm a destination for. `VENMO` uses a confirmed email and is available only when connected PayPal Payouts and payout-email confirmation are enabled in a USD program. Venmo recipients must be in the United States.
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

        # The payout provider the participant should confirm a destination for. `VENMO` uses a confirmed email and is available only when connected PayPal Payouts and payout-email confirmation are enabled in a USD program. Venmo recipients must be in the United States.
        module Provider
          extend GrowsurfRuby::Internal::Type::Enum

          PAYPAL = :PAYPAL
          VENMO = :VENMO
          WISECOM = :WISECOM

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
