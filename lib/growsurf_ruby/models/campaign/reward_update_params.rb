# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Rewards#update
      class RewardUpdateParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute reward_id
        #
        #   @return [String]
        required :reward_id, String

        # @!attribute commission_structure
        #
        #   @return [GrowsurfRuby::Models::CommissionStructure, nil]
        optional :commission_structure,
                 -> { GrowsurfRuby::CommissionStructure },
                 api_name: :commissionStructure

        # @!attribute conversions_required
        #
        #   @return [Integer, nil]
        optional :conversions_required, Integer, api_name: :conversionsRequired

        # @!attribute coupon_code
        #
        #   @return [String, nil]
        optional :coupon_code, String, api_name: :couponCode

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute image_url
        #
        #   @return [String, nil]
        optional :image_url, String, api_name: :imageUrl

        # @!attribute is_active
        #
        #   @return [Boolean, nil]
        optional :is_active, GrowsurfRuby::Internal::Type::Boolean, api_name: :isActive

        # @!attribute is_unlimited
        #
        #   @return [Boolean, nil]
        optional :is_unlimited, GrowsurfRuby::Internal::Type::Boolean, api_name: :isUnlimited

        # @!attribute is_visible
        #
        #   @return [Boolean, nil]
        optional :is_visible, GrowsurfRuby::Internal::Type::Boolean, api_name: :isVisible

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute limit_duration
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::RewardUpdateParams::LimitDuration, nil]
        optional :limit_duration,
                 enum: -> { GrowsurfRuby::Campaign::RewardUpdateParams::LimitDuration },
                 api_name: :limitDuration

        # @!attribute metadata
        #   Custom key/value metadata (single-level; values are stored as strings).
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]

        # @!attribute next_milestone_prefix
        #
        #   @return [String, nil]
        optional :next_milestone_prefix, String, api_name: :nextMilestonePrefix

        # @!attribute next_milestone_suffix
        #
        #   @return [String, nil]
        optional :next_milestone_suffix, String, api_name: :nextMilestoneSuffix

        # @!attribute number_of_winners
        #
        #   @return [Integer, nil]
        optional :number_of_winners, Integer, api_name: :numberOfWinners

        # @!attribute order
        #
        #   @return [Integer, nil]
        optional :order, Integer

        # @!attribute referral_coupon_code
        #
        #   @return [String, nil]
        optional :referral_coupon_code, String, api_name: :referralCouponCode

        # @!attribute referral_description
        #
        #   @return [String, nil]
        optional :referral_description, String, api_name: :referralDescription

        # @!attribute referred_reward_upfront
        #
        #   @return [Boolean, nil]
        optional :referred_reward_upfront,
                 GrowsurfRuby::Internal::Type::Boolean,
                 api_name: :referredRewardUpfront

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!method initialize(id:, reward_id:, commission_structure: nil, conversions_required: nil, coupon_code: nil, description: nil, image_url: nil, is_active: nil, is_unlimited: nil, is_visible: nil, limit: nil, limit_duration: nil, metadata: nil, next_milestone_prefix: nil, next_milestone_suffix: nil, number_of_winners: nil, order: nil, referral_coupon_code: nil, referral_description: nil, referred_reward_upfront: nil, title: nil, request_options: {})
        #   @param id [String]
        #
        #   @param reward_id [String]
        #
        #   @param commission_structure [GrowsurfRuby::Models::CommissionStructure]
        #
        #   @param conversions_required [Integer]
        #
        #   @param coupon_code [String]
        #
        #   @param description [String]
        #
        #   @param image_url [String]
        #
        #   @param is_active [Boolean]
        #
        #   @param is_unlimited [Boolean]
        #
        #   @param is_visible [Boolean]
        #
        #   @param limit [Integer]
        #
        #   @param limit_duration [Symbol, GrowsurfRuby::Models::Campaign::RewardUpdateParams::LimitDuration]
        #
        #   @param metadata [Hash{Symbol=>Object}] Custom key/value metadata (single-level; values are stored as strings).
        #
        #   @param next_milestone_prefix [String]
        #
        #   @param next_milestone_suffix [String]
        #
        #   @param number_of_winners [Integer]
        #
        #   @param order [Integer]
        #
        #   @param referral_coupon_code [String]
        #
        #   @param referral_description [String]
        #
        #   @param referred_reward_upfront [Boolean]
        #
        #   @param title [String]
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

        # @see GrowsurfRuby::Models::Campaign::RewardUpdateParams#limit_duration
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
