# frozen_string_literal: true

module GrowsurfRuby
  module Models
    class CommissionStructure < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute amount
      #
      #   @return [Integer, nil]
      optional :amount, Integer, nil?: true

      # @!attribute approval_required
      #
      #   @return [Boolean, nil]
      optional :approval_required,
               GrowsurfRuby::Internal::Type::Boolean,
               api_name: :approvalRequired,
               nil?: true

      # @!attribute duration
      #
      #   @return [String, nil]
      optional :duration, String, nil?: true

      # @!attribute duration_in_months
      #
      #   @return [Integer, nil]
      optional :duration_in_months, Integer, api_name: :durationInMonths, nil?: true

      # @!attribute event
      #
      #   @return [String, nil]
      optional :event, String, nil?: true

      # @!attribute has_intro
      #
      #   @return [Boolean, nil]
      optional :has_intro, GrowsurfRuby::Internal::Type::Boolean, api_name: :hasIntro, nil?: true

      # @!attribute has_max_amount
      #
      #   @return [Boolean, nil]
      optional :has_max_amount, GrowsurfRuby::Internal::Type::Boolean, api_name: :hasMaxAmount, nil?: true

      # @!attribute hold_duration
      #
      #   @return [Integer, nil]
      optional :hold_duration, Integer, api_name: :holdDuration, nil?: true

      # @!attribute intro_amount
      #
      #   @return [Integer, nil]
      optional :intro_amount, Integer, api_name: :introAmount, nil?: true

      # @!attribute intro_amount_iso
      #
      #   @return [String, nil]
      optional :intro_amount_iso, String, api_name: :introAmountISO, nil?: true

      # @!attribute intro_duration
      #
      #   @return [String, nil]
      optional :intro_duration, String, api_name: :introDuration, nil?: true

      # @!attribute intro_duration_in_months
      #
      #   @return [Integer, nil]
      optional :intro_duration_in_months, Integer, api_name: :introDurationInMonths, nil?: true

      # @!attribute intro_percent
      #
      #   @return [Float, nil]
      optional :intro_percent, Float, api_name: :introPercent, nil?: true

      # @!attribute intro_type
      #
      #   @return [String, nil]
      optional :intro_type, String, api_name: :introType, nil?: true

      # @!attribute max_amount
      #
      #   @return [Integer, nil]
      optional :max_amount, Integer, api_name: :maxAmount, nil?: true

      # @!attribute max_amount_iso
      #
      #   @return [String, nil]
      optional :max_amount_iso, String, api_name: :maxAmountISO, nil?: true

      # @!attribute min_paid_referrals
      #
      #   @return [Integer, nil]
      optional :min_paid_referrals, Integer, api_name: :minPaidReferrals, nil?: true

      # @!attribute percent
      #
      #   @return [Float, nil]
      optional :percent, Float, nil?: true

      # @!attribute type
      #
      #   @return [Symbol, GrowsurfRuby::Models::CommissionStructure::Type, nil]
      optional :type, enum: -> { GrowsurfRuby::CommissionStructure::Type }, nil?: true

      # @!method initialize(amount: nil, approval_required: nil, duration: nil, duration_in_months: nil, event: nil, has_intro: nil, has_max_amount: nil, hold_duration: nil, intro_amount: nil, intro_amount_iso: nil, intro_duration: nil, intro_duration_in_months: nil, intro_percent: nil, intro_type: nil, max_amount: nil, max_amount_iso: nil, min_paid_referrals: nil, percent: nil, type: nil)
      #   @param amount [Integer, nil]
      #   @param approval_required [Boolean, nil]
      #   @param duration [String, nil]
      #   @param duration_in_months [Integer, nil]
      #   @param event [String, nil]
      #   @param has_intro [Boolean, nil]
      #   @param has_max_amount [Boolean, nil]
      #   @param hold_duration [Integer, nil]
      #   @param intro_amount [Integer, nil]
      #   @param intro_amount_iso [String, nil]
      #   @param intro_duration [String, nil]
      #   @param intro_duration_in_months [Integer, nil]
      #   @param intro_percent [Float, nil]
      #   @param intro_type [String, nil]
      #   @param max_amount [Integer, nil]
      #   @param max_amount_iso [String, nil]
      #   @param min_paid_referrals [Integer, nil]
      #   @param percent [Float, nil]
      #   @param type [Symbol, GrowsurfRuby::Models::CommissionStructure::Type, nil]

      # @see GrowsurfRuby::Models::CommissionStructure#type
      module Type
        extend GrowsurfRuby::Internal::Type::Enum

        PERCENT = :PERCENT
        AMOUNT = :AMOUNT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
