# frozen_string_literal: true

module Growsurf
  module Models
    # @see Growsurf::Resources::Campaign#list_payouts
    class ParticipantPayoutList < Growsurf::Internal::Type::BaseModel
      # @!attribute limit
      #
      #   @return [Integer]
      required :limit, Integer

      # @!attribute next_id
      #
      #   @return [String, nil]
      required :next_id, String, api_name: :nextId, nil?: true

      # @!attribute payouts
      #
      #   @return [Array<Growsurf::Models::ParticipantPayoutList::Payout>]
      required :payouts, -> { Growsurf::Internal::Type::ArrayOf[Growsurf::ParticipantPayoutList::Payout] }

      # @!method initialize(limit:, next_id:, payouts:)
      #   @param limit [Integer]
      #   @param next_id [String, nil]
      #   @param payouts [Array<Growsurf::Models::ParticipantPayoutList::Payout>]

      class Payout < Growsurf::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute commission_ids
        #
        #   @return [Array<String>]
        required :commission_ids, Growsurf::Internal::Type::ArrayOf[String], api_name: :commissionIds

        # @!attribute created_at
        #
        #   @return [Integer]
        required :created_at, Integer, api_name: :createdAt

        # @!attribute currency_iso
        #
        #   @return [String]
        required :currency_iso, String, api_name: :currencyISO

        # @!attribute participant_id
        #
        #   @return [String]
        required :participant_id, String, api_name: :participantId

        # @!attribute status
        #
        #   @return [Symbol, Growsurf::Models::ParticipantPayoutList::Payout::Status]
        required :status, enum: -> { Growsurf::ParticipantPayoutList::Payout::Status }

        # @!attribute amount_in_campaign_currency
        #
        #   @return [Integer, nil]
        optional :amount_in_campaign_currency, Integer, api_name: :amountInCampaignCurrency, nil?: true

        # @!attribute campaign_currency_iso
        #
        #   @return [String, nil]
        optional :campaign_currency_iso, String, api_name: :campaignCurrencyISO, nil?: true

        # @!attribute exchange_rate
        #
        #   @return [Float, nil]
        optional :exchange_rate, Float, api_name: :exchangeRate, nil?: true

        # @!attribute exchange_rate_at
        #
        #   @return [Integer, nil]
        optional :exchange_rate_at, Integer, api_name: :exchangeRateAt

        # @!attribute failed_at
        #
        #   @return [Integer, nil]
        optional :failed_at, Integer, api_name: :failedAt

        # @!attribute fx_error
        #
        #   @return [String, nil]
        optional :fx_error, String, api_name: :fxError, nil?: true

        # @!attribute issued_at
        #
        #   @return [Integer, nil]
        optional :issued_at, Integer, api_name: :issuedAt

        # @!attribute provider
        #
        #   @return [String, nil]
        optional :provider, String, nil?: true

        # @!method initialize(id:, amount:, commission_ids:, created_at:, currency_iso:, participant_id:, status:, amount_in_campaign_currency: nil, campaign_currency_iso: nil, exchange_rate: nil, exchange_rate_at: nil, failed_at: nil, fx_error: nil, issued_at: nil, provider: nil)
        #   @param id [String]
        #   @param amount [Integer]
        #   @param commission_ids [Array<String>]
        #   @param created_at [Integer]
        #   @param currency_iso [String]
        #   @param participant_id [String]
        #   @param status [Symbol, Growsurf::Models::ParticipantPayoutList::Payout::Status]
        #   @param amount_in_campaign_currency [Integer, nil]
        #   @param campaign_currency_iso [String, nil]
        #   @param exchange_rate [Float, nil]
        #   @param exchange_rate_at [Integer]
        #   @param failed_at [Integer]
        #   @param fx_error [String, nil]
        #   @param issued_at [Integer]
        #   @param provider [String, nil]

        # @see Growsurf::Models::ParticipantPayoutList::Payout#status
        module Status
          extend Growsurf::Internal::Type::Enum

          UPCOMING = :UPCOMING
          QUEUED = :QUEUED
          ISSUED = :ISSUED
          FAILED = :FAILED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
