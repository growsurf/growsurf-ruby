# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#list_commissions
    class ParticipantCommissionList < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute commissions
      #
      #   @return [Array<GrowsurfRuby::Models::ParticipantCommissionList::Commission>]
      required :commissions,
               -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::ParticipantCommissionList::Commission] }

      # @!attribute limit
      #
      #   @return [Integer]
      required :limit, Integer

      # @!attribute next_id
      #
      #   @return [String, nil]
      required :next_id, String, api_name: :nextId, nil?: true

      # @!method initialize(commissions:, limit:, next_id:)
      #   @param commissions [Array<GrowsurfRuby::Models::ParticipantCommissionList::Commission>]
      #   @param limit [Integer]
      #   @param next_id [String, nil]

      class Commission < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #
        #   @return [Integer, nil]
        required :amount, Integer, nil?: true

        # @!attribute created_at
        #
        #   @return [Integer]
        required :created_at, Integer, api_name: :createdAt

        # @!attribute currency_iso
        #
        #   @return [String]
        required :currency_iso, String, api_name: :currencyISO

        # @!attribute referred_id
        #
        #   @return [String]
        required :referred_id, String, api_name: :referredId

        # @!attribute referrer_id
        #
        #   @return [String]
        required :referrer_id, String, api_name: :referrerId

        # @!attribute sale_amount
        #
        #   @return [Integer, nil]
        required :sale_amount, Integer, api_name: :saleAmount, nil?: true

        # @!attribute status
        #
        #   @return [Symbol, GrowsurfRuby::Models::ParticipantCommissionList::Commission::Status]
        required :status, enum: -> { GrowsurfRuby::ParticipantCommissionList::Commission::Status }

        # @!attribute amount_in_campaign_currency
        #
        #   @return [Integer, nil]
        optional :amount_in_campaign_currency, Integer, api_name: :amountInCampaignCurrency, nil?: true

        # @!attribute approved_at
        #
        #   @return [Integer, nil]
        optional :approved_at, Integer, api_name: :approvedAt

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

        # @!attribute fx_error
        #
        #   @return [String, nil]
        optional :fx_error, String, api_name: :fxError, nil?: true

        # @!attribute hold_duration
        #
        #   @return [Integer, nil]
        optional :hold_duration, Integer, api_name: :holdDuration, nil?: true

        # @!attribute paid_at
        #
        #   @return [Integer, nil]
        optional :paid_at, Integer, api_name: :paidAt

        # @!attribute payout_queued_at
        #
        #   @return [Integer, nil]
        optional :payout_queued_at, Integer, api_name: :payoutQueuedAt

        # @!attribute provider
        #
        #   @return [String, nil]
        optional :provider, String, nil?: true

        # @!attribute reversed_at
        #
        #   @return [Integer, nil]
        optional :reversed_at, Integer, api_name: :reversedAt

        # @!attribute sale_amount_in_campaign_currency
        #
        #   @return [Integer, nil]
        optional :sale_amount_in_campaign_currency,
                 Integer,
                 api_name: :saleAmountInCampaignCurrency,
                 nil?: true

        # @!method initialize(id:, amount:, created_at:, currency_iso:, referred_id:, referrer_id:, sale_amount:, status:, amount_in_campaign_currency: nil, approved_at: nil, campaign_currency_iso: nil, exchange_rate: nil, exchange_rate_at: nil, fx_error: nil, hold_duration: nil, paid_at: nil, payout_queued_at: nil, provider: nil, reversed_at: nil, sale_amount_in_campaign_currency: nil)
        #   @param id [String]
        #   @param amount [Integer, nil]
        #   @param created_at [Integer]
        #   @param currency_iso [String]
        #   @param referred_id [String]
        #   @param referrer_id [String]
        #   @param sale_amount [Integer, nil]
        #   @param status [Symbol, GrowsurfRuby::Models::ParticipantCommissionList::Commission::Status]
        #   @param amount_in_campaign_currency [Integer, nil]
        #   @param approved_at [Integer]
        #   @param campaign_currency_iso [String, nil]
        #   @param exchange_rate [Float, nil]
        #   @param exchange_rate_at [Integer]
        #   @param fx_error [String, nil]
        #   @param hold_duration [Integer, nil]
        #   @param paid_at [Integer]
        #   @param payout_queued_at [Integer]
        #   @param provider [String, nil]
        #   @param reversed_at [Integer]
        #   @param sale_amount_in_campaign_currency [Integer, nil]

        # @see GrowsurfRuby::Models::ParticipantCommissionList::Commission#status
        module Status
          extend GrowsurfRuby::Internal::Type::Enum

          PENDING = :PENDING
          APPROVED = :APPROVED
          PAID = :PAID
          REVERSED = :REVERSED
          DELETED = :DELETED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
