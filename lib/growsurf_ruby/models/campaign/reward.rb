# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Rewards#create
      class Reward < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute is_unlimited
        #
        #   @return [Boolean]
        required :is_unlimited, GrowsurfRuby::Internal::Type::Boolean, api_name: :isUnlimited

        # @!attribute metadata
        #   Shallow custom metadata object.
        #
        #   @return [Hash{Symbol=>Object}]
        required :metadata, GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]

        # @!attribute type
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::Reward::Type]
        required :type, enum: -> { GrowsurfRuby::Campaign::Reward::Type }

        # @!attribute commission_structure
        #
        #   @return [GrowsurfRuby::Models::CommissionStructure, nil]
        optional :commission_structure,
                 -> { GrowsurfRuby::CommissionStructure },
                 api_name: :commissionStructure,
                 nil?: true

        # @!attribute conversions_required
        #
        #   @return [Integer, nil]
        optional :conversions_required, Integer, api_name: :conversionsRequired, nil?: true

        # @!attribute coupon_code
        #
        #   @return [String, nil]
        optional :coupon_code, String, api_name: :couponCode, nil?: true

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute image_url
        #
        #   @return [String, nil]
        optional :image_url, String, api_name: :imageUrl, nil?: true

        # @!attribute limit
        #   `-1` represents an unlimited reward in REST responses.
        #
        #   @return [Integer, nil]
        optional :limit, Integer, nil?: true

        # @!attribute limit_duration
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::Reward::LimitDuration, nil]
        optional :limit_duration,
                 enum: -> { GrowsurfRuby::Campaign::Reward::LimitDuration },
                 api_name: :limitDuration,
                 nil?: true

        # @!attribute next_milestone_prefix
        #
        #   @return [String, nil]
        optional :next_milestone_prefix, String, api_name: :nextMilestonePrefix, nil?: true

        # @!attribute next_milestone_suffix
        #
        #   @return [String, nil]
        optional :next_milestone_suffix, String, api_name: :nextMilestoneSuffix, nil?: true

        # @!attribute number_of_winners
        #
        #   @return [Integer, nil]
        optional :number_of_winners, Integer, api_name: :numberOfWinners, nil?: true

        # @!attribute order
        #
        #   @return [Integer, nil]
        optional :order, Integer, nil?: true

        # @!attribute referral_coupon_code
        #   The coupon code delivered to the referred friend (double-sided rewards).
        #
        #   @return [String, nil]
        optional :referral_coupon_code, String, api_name: :referralCouponCode, nil?: true

        # @!attribute referral_description
        #
        #   @return [String, nil]
        optional :referral_description, String, api_name: :referralDescription, nil?: true

        # @!attribute referred_reward_upfront
        #
        #   @return [Boolean, nil]
        optional :referred_reward_upfront,
                 GrowsurfRuby::Internal::Type::Boolean,
                 api_name: :referredRewardUpfront

        # @!attribute referred_value
        #   Tax valuation for the referred friend's side of a double-sided reward.
        #
        #   @return [GrowsurfRuby::Models::RewardTaxValuation, nil]
        optional :referred_value,
                 -> { GrowsurfRuby::RewardTaxValuation },
                 api_name: :referredValue,
                 nil?: true

        # @!attribute value
        #   Tax valuation for the reward (the referrer's side of a double-sided reward).
        #
        #   @return [GrowsurfRuby::Models::RewardTaxValuation, nil]
        optional :value, -> { GrowsurfRuby::RewardTaxValuation }, nil?: true

        # @!method initialize(id:, is_unlimited:, metadata:, type:, commission_structure: nil, conversions_required: nil, coupon_code: nil, description: nil, image_url: nil, limit: nil, limit_duration: nil, next_milestone_prefix: nil, next_milestone_suffix: nil, number_of_winners: nil, order: nil, referral_coupon_code: nil, referral_description: nil, referred_reward_upfront: nil, referred_value: nil, value: nil)
        #   @param id [String]
        #
        #   @param is_unlimited [Boolean]
        #
        #   @param metadata [Hash{Symbol=>Object}] Shallow custom metadata object.
        #
        #   @param type [Symbol, GrowsurfRuby::Models::Campaign::Reward::Type]
        #
        #   @param commission_structure [GrowsurfRuby::Models::CommissionStructure, nil]
        #
        #   @param conversions_required [Integer, nil]
        #
        #   @param coupon_code [String, nil]
        #
        #   @param description [String, nil]
        #
        #   @param image_url [String, nil]
        #
        #   @param limit [Integer, nil] `-1` represents an unlimited reward in REST responses.
        #
        #   @param limit_duration [Symbol, GrowsurfRuby::Models::Campaign::Reward::LimitDuration, nil]
        #
        #   @param next_milestone_prefix [String, nil]
        #
        #   @param next_milestone_suffix [String, nil]
        #
        #   @param number_of_winners [Integer, nil]
        #
        #   @param order [Integer, nil]
        #
        #   @param referral_coupon_code [String, nil] The coupon code delivered to the referred friend (double-sided rewards).
        #
        #   @param referral_description [String, nil]
        #
        #   @param referred_reward_upfront [Boolean]
        #
        #   @param referred_value [GrowsurfRuby::Models::RewardTaxValuation, nil] Tax valuation for the referred friend's side of a double-sided reward.
        #
        #   @param value [GrowsurfRuby::Models::RewardTaxValuation, nil] Tax valuation for the reward (the referrer's side of a double-sided reward).

        # @see GrowsurfRuby::Models::Campaign::Reward#type
        module Type
          extend GrowsurfRuby::Internal::Type::Enum

          SINGLE_SIDED = :SINGLE_SIDED
          DOUBLE_SIDED = :DOUBLE_SIDED
          MILESTONE = :MILESTONE
          LEADERBOARD = :LEADERBOARD
          AFFILIATE = :AFFILIATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see GrowsurfRuby::Models::Campaign::Reward#limit_duration
        module LimitDuration
          extend GrowsurfRuby::Internal::Type::Enum

          IN_TOTAL = :IN_TOTAL
          PER_MONTH = :PER_MONTH
          PER_YEAR = :PER_YEAR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
