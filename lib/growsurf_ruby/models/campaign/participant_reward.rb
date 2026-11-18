# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantReward < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute reward_id
        #
        #   @return [String]
        required :reward_id, String, api_name: :rewardId

        # @!attribute status
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantReward::Status]
        required :status, enum: -> { GrowsurfRuby::Campaign::ParticipantReward::Status }

        # @!attribute approved
        #
        #   @return [Boolean, nil]
        optional :approved, GrowsurfRuby::Internal::Type::Boolean

        # @!attribute approved_at
        #
        #   @return [Integer, nil]
        optional :approved_at, Integer, api_name: :approvedAt, nil?: true

        # @!attribute amount
        #
        #   @return [Float, nil]
        optional :amount, Float, nil?: true

        # @!attribute amount_source
        #   Where `amount` or `percent_off` comes from. `METADATA` means the amount saved
        #   when the reward was earned.
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantReward::AmountSource, nil]
        optional :amount_source,
                 enum: -> { GrowsurfRuby::Campaign::ParticipantReward::AmountSource },
                 api_name: :amountSource,
                 nil?: true

        # @!attribute commission_structure
        #
        #   @return [GrowsurfRuby::Models::CommissionStructure, nil]
        optional :commission_structure,
                 -> { GrowsurfRuby::CommissionStructure },
                 api_name: :commissionStructure,
                 nil?: true

        # @!attribute currency_iso
        #
        #   @return [String, nil]
        optional :currency_iso, String, api_name: :currencyISO, nil?: true

        # @!attribute fulfilled_at
        #
        #   @return [Integer, nil]
        optional :fulfilled_at, Integer, api_name: :fulfilledAt, nil?: true

        # @!attribute group_id
        #   The group whose reward this is (`grp_…`), saved when it was earned. `null` for
        #   Default and for rewards earned before groups existed.
        #
        #   @return [String, nil]
        optional :group_id, String, api_name: :groupId, nil?: true

        # @!attribute is_available
        #
        #   @return [Boolean, nil]
        optional :is_available, GrowsurfRuby::Internal::Type::Boolean, api_name: :isAvailable

        # @!attribute is_fulfilled
        #
        #   @return [Boolean, nil]
        optional :is_fulfilled, GrowsurfRuby::Internal::Type::Boolean, api_name: :isFulfilled

        # @!attribute is_referrer
        #
        #   @return [Boolean, nil]
        optional :is_referrer, GrowsurfRuby::Internal::Type::Boolean, api_name: :isReferrer

        # @!attribute percent_off
        #   Discount of a percent-off coupon (`20` = 20% off); `nil` for every other reward.
        #
        #   @return [Float, nil]
        optional :percent_off, Float, api_name: :percentOff, nil?: true

        # @!attribute referred_id
        #
        #   @return [String, nil]
        optional :referred_id, String, api_name: :referredId

        # @!attribute referrer_id
        #
        #   @return [String, nil]
        optional :referrer_id, String, api_name: :referrerId

        # @!attribute unread
        #
        #   @return [Boolean, nil]
        optional :unread, GrowsurfRuby::Internal::Type::Boolean

        # @!method initialize(id:, reward_id:, status:, approved: nil, approved_at: nil, amount: nil, amount_source: nil, commission_structure: nil, currency_iso: nil, fulfilled_at: nil, group_id: nil, is_available: nil, is_fulfilled: nil, is_referrer: nil, percent_off: nil, referred_id: nil, referrer_id: nil, unread: nil)
        #   @param id [String]
        #   @param reward_id [String]
        #   @param status [Symbol, GrowsurfRuby::Models::Campaign::ParticipantReward::Status]
        #   @param approved [Boolean]
        #   @param approved_at [Integer]
        #   @param amount [Float]
        #   @param amount_source [Symbol, GrowsurfRuby::Models::Campaign::ParticipantReward::AmountSource, nil]
        #   @param commission_structure [GrowsurfRuby::Models::CommissionStructure, nil]
        #   @param currency_iso [String]
        #   @param fulfilled_at [Integer]
        #   @param group_id [String, nil]
        #   @param is_available [Boolean]
        #   @param is_fulfilled [Boolean]
        #   @param is_referrer [Boolean]
        #   @param percent_off [Float]
        #   @param referred_id [String]
        #   @param referrer_id [String]
        #   @param unread [Boolean]

        # @see GrowsurfRuby::Models::Campaign::ParticipantReward#amount_source
        module AmountSource
          extend GrowsurfRuby::Internal::Type::Enum

          STRIPE = :STRIPE
          CHARGEBEE = :CHARGEBEE
          RECURLY = :RECURLY
          CHARGIFY = :CHARGIFY
          PAYPAL = :PAYPAL
          VENMO = :VENMO
          TANGO_CARD = :TANGO_CARD
          TREMENDOUS = :TREMENDOUS
          XTRM = :XTRM
          METADATA = :METADATA

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see GrowsurfRuby::Models::Campaign::ParticipantReward#status
        module Status
          extend GrowsurfRuby::Internal::Type::Enum

          PENDING = :PENDING
          FULFILLED = :FULFILLED
          CANCELLED = :CANCELLED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
