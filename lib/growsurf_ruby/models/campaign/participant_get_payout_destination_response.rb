# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#get_payout_destination
      class ParticipantGetPayoutDestinationResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute active_provider
        #   The provider that currently gets paid, or null until the participant confirms
        #   one.
        #
        #   @return [String, nil]
        optional :active_provider, String, api_name: :activeProvider, nil?: true

        # @!attribute destinations
        #   One entry per enabled payout provider describing the participant's destination
        #   for it.
        #
        #   @return [Array<GrowsurfRuby::Models::Campaign::ParticipantGetPayoutDestinationResponse::Destination>, nil]
        optional :destinations,
                 -> {
                   GrowsurfRuby::Internal::Type::ArrayOf[
                     GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination
                   ]
                 }

        # @!attribute enabled_providers
        #   The payout providers enabled for this program.
        #
        #   @return [Array<String>, nil]
        optional :enabled_providers,
                 -> {
                   GrowsurfRuby::Internal::Type::ArrayOf[String]
                 },
                 api_name: :enabledProviders

        # @!method initialize(active_provider: nil, destinations: nil, enabled_providers: nil)
        #   @param active_provider [String, nil] The provider that currently gets paid, or null until the participant confirms one.
        #
        #   @param destinations [Array<GrowsurfRuby::Models::Campaign::ParticipantGetPayoutDestinationResponse::Destination>] One entry per enabled payout provider describing the participant's destination for it.
        #
        #   @param enabled_providers [Array<String>] The payout providers enabled for this program.

        # @see GrowsurfRuby::Models::Campaign::ParticipantGetPayoutDestinationResponse#destinations
        class Destination < GrowsurfRuby::Internal::Type::BaseModel
          # @!attribute claim_email
          #   The confirmed payout email for this provider.
          #
          #   @return [String, nil]
          optional :claim_email, String, api_name: :claimEmail, nil?: true

          # @!attribute confirmed_at
          #   When the destination was confirmed, as a Unix timestamp in milliseconds.
          #
          #   @return [Integer, nil]
          optional :confirmed_at, Integer, api_name: :confirmedAt, nil?: true

          # @!attribute legal_entity_type
          #   The legal recipient type the participant confirmed, if any.
          #
          #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantGetPayoutDestinationResponse::Destination::LegalEntityType, nil]
          optional :legal_entity_type,
                   enum: -> {
                     GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination::LegalEntityType
                   },
                   api_name: :legalEntityType,
                   nil?: true

          # @!attribute needs_repair_reason
          #   When status is `NEEDS_REPAIR`, why (e.g. a bounced delivery).
          #
          #   @return [String, nil]
          optional :needs_repair_reason, String, api_name: :needsRepairReason, nil?: true

          # @!attribute provider
          #   The payout provider this entry describes.
          #
          #   @return [String, nil]
          optional :provider, String

          # @!attribute provider_display_name
          #   The customer-facing provider name (e.g. "PayPal", "Wise").
          #
          #   @return [String, nil]
          optional :provider_display_name, String, api_name: :providerDisplayName

          # @!attribute status
          #   The destination's current status: `NONE` (not set up), `PENDING_CONFIRMATION`,
          #   `CONFIRMED`, `ACTIVE`, `NEEDS_REPAIR`, or `EXPIRED`. Historical superseded
          #   or revoked destinations are projected as `NONE`.
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(claim_email: nil, confirmed_at: nil, legal_entity_type: nil, needs_repair_reason: nil, provider: nil, provider_display_name: nil, status: nil)
          #   @param claim_email [String, nil] The confirmed payout email for this provider.
          #
          #   @param confirmed_at [Integer, nil] When the destination was confirmed, as a Unix timestamp in milliseconds.
          #
          #   @param legal_entity_type [Symbol, GrowsurfRuby::Models::Campaign::ParticipantGetPayoutDestinationResponse::Destination::LegalEntityType, nil] The legal recipient type the participant confirmed, if any.
          #
          #   @param needs_repair_reason [String, nil] When status is `NEEDS_REPAIR`, why (e.g. a bounced delivery).
          #
          #   @param provider [String] The payout provider this entry describes.
          #
          #   @param provider_display_name [String] The customer-facing provider name (e.g. "PayPal", "Wise").
          #
          #   @param status [String] The destination's current status: `NONE` (not set up), `PENDING_CONFIRMATION`, `CONFIRMED`, `ACTIVE`, `NEEDS_REPAIR`, or `EXPIRED`.

          # The legal recipient type the participant confirmed, if any.
          #
          # @see GrowsurfRuby::Models::Campaign::ParticipantGetPayoutDestinationResponse::Destination#legal_entity_type
          module LegalEntityType
            extend GrowsurfRuby::Internal::Type::Enum

            INDIVIDUAL = :INDIVIDUAL
            BUSINESS = :BUSINESS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
