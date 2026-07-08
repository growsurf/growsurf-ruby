# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class RewardCreateParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::RewardCreateParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig do
          returns(
            GrowsurfRuby::Models::Campaign::RewardCreateParams::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(GrowsurfRuby::CommissionStructure)) }
        attr_reader :commission_structure

        sig do
          params(
            commission_structure: GrowsurfRuby::CommissionStructure::OrHash
          ).void
        end
        attr_writer :commission_structure

        sig { returns(T.nilable(Integer)) }
        attr_reader :conversions_required

        sig { params(conversions_required: Integer).void }
        attr_writer :conversions_required

        # Legacy static coupon code shown to the referrer in the reward-won email and
        # webhook. Display text only; superseded by a connected billing integration's
        # issued coupon when one exists.
        sig { returns(T.nilable(String)) }
        attr_reader :coupon_code

        sig { params(coupon_code: String).void }
        attr_writer :coupon_code

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :image_url

        sig { params(image_url: String).void }
        attr_writer :image_url

        # Whether the reward can be earned an unlimited number of times. Defaults to
        # `true`, except `MILESTONE` rewards, which can only be earned once.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_unlimited

        sig { params(is_unlimited: T::Boolean).void }
        attr_writer :is_unlimited

        # Whether the reward is enabled. When `false` the reward is disabled: hidden from
        # participants and no longer awarded, including those who already earned it.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_visible

        sig { params(is_visible: T::Boolean).void }
        attr_writer :is_visible

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig do
          returns(
            T.nilable(
              GrowsurfRuby::Models::Campaign::RewardCreateParams::LimitDuration::OrSymbol
            )
          )
        end
        attr_reader :limit_duration

        sig do
          params(
            limit_duration:
              GrowsurfRuby::Models::Campaign::RewardCreateParams::LimitDuration::OrSymbol
          ).void
        end
        attr_writer :limit_duration

        # Custom key/value metadata (single-level; values are stored as strings).
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, T.anything]).void }
        attr_writer :metadata

        # Text shown before a participant's referral count in milestone-progress copy.
        # Applies to `MILESTONE` rewards.
        sig { returns(T.nilable(String)) }
        attr_reader :next_milestone_prefix

        sig { params(next_milestone_prefix: String).void }
        attr_writer :next_milestone_prefix

        # Text shown after a participant's referral count in milestone-progress copy.
        # Applies to `MILESTONE` rewards.
        sig { returns(T.nilable(String)) }
        attr_reader :next_milestone_suffix

        sig { params(next_milestone_suffix: String).void }
        attr_writer :next_milestone_suffix

        # The number of winners (`LEADERBOARD` rewards only). With `limitDuration`
        # `PER_MONTH` this many win each month, otherwise this many win in total;
        # omitting it defaults to `3`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :number_of_winners

        sig { params(number_of_winners: Integer).void }
        attr_writer :number_of_winners

        sig { returns(T.nilable(Integer)) }
        attr_reader :order

        sig { params(order: Integer).void }
        attr_writer :order

        # Legacy static coupon code shown to the referred friend (double-sided rewards)
        # in the reward-won email and webhook. Display text only; superseded by a
        # connected billing integration's issued coupon when one exists.
        sig { returns(T.nilable(String)) }
        attr_reader :referral_coupon_code

        sig { params(referral_coupon_code: String).void }
        attr_writer :referral_coupon_code

        sig { returns(T.nilable(String)) }
        attr_reader :referral_description

        sig { params(referral_description: String).void }
        attr_writer :referral_description

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :referred_reward_upfront

        sig { params(referred_reward_upfront: T::Boolean).void }
        attr_writer :referred_reward_upfront

        # Tax valuation for the referred friend's side of a double-sided reward.
        # Defaults to not tax-reportable (a purchase rebate).
        sig { returns(T.nilable(GrowsurfRuby::RewardTaxValuation)) }
        attr_reader :referred_value

        sig do
          params(referred_value: GrowsurfRuby::RewardTaxValuation::OrHash).void
        end
        attr_writer :referred_value

        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        # Tax valuation for the reward (the referrer's side of a double-sided reward).
        # Used by tax documentation / 1099 reporting.
        sig { returns(T.nilable(GrowsurfRuby::RewardTaxValuation)) }
        attr_reader :value

        sig { params(value: GrowsurfRuby::RewardTaxValuation::OrHash).void }
        attr_writer :value

        sig do
          params(
            type:
              GrowsurfRuby::Models::Campaign::RewardCreateParams::Type::OrSymbol,
            commission_structure: GrowsurfRuby::CommissionStructure::OrHash,
            conversions_required: Integer,
            coupon_code: String,
            description: String,
            image_url: String,
            is_unlimited: T::Boolean,
            is_visible: T::Boolean,
            limit: Integer,
            limit_duration:
              GrowsurfRuby::Models::Campaign::RewardCreateParams::LimitDuration::OrSymbol,
            metadata: T::Hash[Symbol, T.anything],
            next_milestone_prefix: String,
            next_milestone_suffix: String,
            number_of_winners: Integer,
            order: Integer,
            referral_coupon_code: String,
            referral_description: String,
            referred_reward_upfront: T::Boolean,
            referred_value: GrowsurfRuby::RewardTaxValuation::OrHash,
            title: String,
            value: GrowsurfRuby::RewardTaxValuation::OrHash,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          type:,
          commission_structure: nil,
          conversions_required: nil,
          # Legacy static coupon code shown to the referrer in the reward-won email and
          # webhook. Display text only; superseded by a connected billing integration's
          # issued coupon when one exists.
          coupon_code: nil,
          description: nil,
          image_url: nil,
          # Whether the reward can be earned an unlimited number of times. Defaults to
          # `true`, except `MILESTONE` rewards, which can only be earned once.
          is_unlimited: nil,
          # Whether the reward is enabled. When `false` the reward is disabled: hidden from
          # participants and no longer awarded, including those who already earned it.
          is_visible: nil,
          limit: nil,
          limit_duration: nil,
          # Custom key/value metadata (single-level; values are stored as strings).
          metadata: nil,
          # Text shown before a participant's referral count in milestone-progress copy.
          # Applies to `MILESTONE` rewards.
          next_milestone_prefix: nil,
          # Text shown after a participant's referral count in milestone-progress copy.
          # Applies to `MILESTONE` rewards.
          next_milestone_suffix: nil,
          # The number of winners (`LEADERBOARD` rewards only). With `limitDuration`
          # `PER_MONTH` this many win each month, otherwise this many win in total;
          # omitting it defaults to `3`.
          number_of_winners: nil,
          order: nil,
          # Legacy static coupon code shown to the referred friend (double-sided rewards)
          # in the reward-won email and webhook. Display text only; superseded by a
          # connected billing integration's issued coupon when one exists.
          referral_coupon_code: nil,
          referral_description: nil,
          referred_reward_upfront: nil,
          # Tax valuation for the referred friend's side of a double-sided reward.
          # Defaults to not tax-reportable (a purchase rebate).
          referred_value: nil,
          title: nil,
          # Tax valuation for the reward (the referrer's side of a double-sided reward).
          # Used by tax documentation / 1099 reporting.
          value: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              type:
                GrowsurfRuby::Models::Campaign::RewardCreateParams::Type::OrSymbol,
              commission_structure: GrowsurfRuby::CommissionStructure::OrHash,
              conversions_required: Integer,
              coupon_code: String,
              description: String,
              image_url: String,
              is_unlimited: T::Boolean,
              is_visible: T::Boolean,
              limit: Integer,
              limit_duration:
                GrowsurfRuby::Models::Campaign::RewardCreateParams::LimitDuration::OrSymbol,
              metadata: T::Hash[Symbol, T.anything],
              next_milestone_prefix: String,
              next_milestone_suffix: String,
              number_of_winners: Integer,
              order: Integer,
              referral_coupon_code: String,
              referral_description: String,
              referred_reward_upfront: T::Boolean,
              referred_value: GrowsurfRuby::RewardTaxValuation::OrHash,
              title: String,
              value: GrowsurfRuby::RewardTaxValuation::OrHash,
              request_options: GrowsurfRuby::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Type
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                GrowsurfRuby::Models::Campaign::RewardCreateParams::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE_SIDED =
            T.let(
              :SINGLE_SIDED,
              GrowsurfRuby::Models::Campaign::RewardCreateParams::Type::TaggedSymbol
            )
          DOUBLE_SIDED =
            T.let(
              :DOUBLE_SIDED,
              GrowsurfRuby::Models::Campaign::RewardCreateParams::Type::TaggedSymbol
            )
          MILESTONE =
            T.let(
              :MILESTONE,
              GrowsurfRuby::Models::Campaign::RewardCreateParams::Type::TaggedSymbol
            )
          LEADERBOARD =
            T.let(
              :LEADERBOARD,
              GrowsurfRuby::Models::Campaign::RewardCreateParams::Type::TaggedSymbol
            )
          AFFILIATE =
            T.let(
              :AFFILIATE,
              GrowsurfRuby::Models::Campaign::RewardCreateParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Models::Campaign::RewardCreateParams::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module LimitDuration
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                GrowsurfRuby::Models::Campaign::RewardCreateParams::LimitDuration
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_TOTAL =
            T.let(
              :IN_TOTAL,
              GrowsurfRuby::Models::Campaign::RewardCreateParams::LimitDuration::TaggedSymbol
            )
          PER_MONTH =
            T.let(
              :PER_MONTH,
              GrowsurfRuby::Models::Campaign::RewardCreateParams::LimitDuration::TaggedSymbol
            )
          PER_YEAR =
            T.let(
              :PER_YEAR,
              GrowsurfRuby::Models::Campaign::RewardCreateParams::LimitDuration::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Models::Campaign::RewardCreateParams::LimitDuration::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
