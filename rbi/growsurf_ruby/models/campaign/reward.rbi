# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class Reward < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::Reward,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :is_unlimited

        # Shallow custom metadata object.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :metadata

        sig do
          returns(GrowsurfRuby::Models::Campaign::Reward::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig { returns(T.nilable(GrowsurfRuby::CommissionStructure)) }
        attr_reader :commission_structure

        sig do
          params(
            commission_structure:
              T.nilable(GrowsurfRuby::CommissionStructure::OrHash)
          ).void
        end
        attr_writer :commission_structure

        sig { returns(T.nilable(Integer)) }
        attr_accessor :conversions_required

        # Legacy static coupon code shown to the referrer in the reward-won email and
        # webhook. Display text only; superseded by a connected billing integration's
        # issued coupon when one exists.
        sig { returns(T.nilable(String)) }
        attr_accessor :coupon_code

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(String)) }
        attr_accessor :image_url

        # `-1` represents an unlimited reward in REST responses.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit

        sig do
          returns(
            T.nilable(
              GrowsurfRuby::Models::Campaign::Reward::LimitDuration::TaggedSymbol
            )
          )
        end
        attr_accessor :limit_duration

        # Text shown before a participant's referral count in milestone-progress copy.
        # Applies to `MILESTONE` rewards.
        sig { returns(T.nilable(String)) }
        attr_accessor :next_milestone_prefix

        # Text shown after a participant's referral count in milestone-progress copy.
        # Applies to `MILESTONE` rewards.
        sig { returns(T.nilable(String)) }
        attr_accessor :next_milestone_suffix

        # The number of winners (`LEADERBOARD` rewards only). With `limitDuration`
        # `PER_MONTH` this many win each month, otherwise this many win in total.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :number_of_winners

        sig { returns(T.nilable(Integer)) }
        attr_accessor :order

        # Legacy static coupon code shown to the referred friend (double-sided rewards)
        # in the reward-won email and webhook. Display text only; superseded by a
        # connected billing integration's issued coupon when one exists.
        sig { returns(T.nilable(String)) }
        attr_accessor :referral_coupon_code

        sig { returns(T.nilable(String)) }
        attr_accessor :referral_description

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :referred_reward_upfront

        sig { params(referred_reward_upfront: T::Boolean).void }
        attr_writer :referred_reward_upfront

        # Tax valuation for the referred friend's side of a double-sided reward.
        sig { returns(T.nilable(GrowsurfRuby::RewardTaxValuation)) }
        attr_reader :referred_value

        sig do
          params(
            referred_value: T.nilable(GrowsurfRuby::RewardTaxValuation::OrHash)
          ).void
        end
        attr_writer :referred_value

        # Tax valuation for the reward (the referrer's side of a double-sided reward).
        sig { returns(T.nilable(GrowsurfRuby::RewardTaxValuation)) }
        attr_reader :value

        sig do
          params(
            value: T.nilable(GrowsurfRuby::RewardTaxValuation::OrHash)
          ).void
        end
        attr_writer :value

        sig do
          params(
            id: String,
            is_unlimited: T::Boolean,
            metadata: T::Hash[Symbol, T.anything],
            type: GrowsurfRuby::Models::Campaign::Reward::Type::OrSymbol,
            commission_structure:
              T.nilable(GrowsurfRuby::CommissionStructure::OrHash),
            conversions_required: T.nilable(Integer),
            coupon_code: T.nilable(String),
            description: T.nilable(String),
            image_url: T.nilable(String),
            limit: T.nilable(Integer),
            limit_duration:
              T.nilable(
                GrowsurfRuby::Models::Campaign::Reward::LimitDuration::OrSymbol
              ),
            next_milestone_prefix: T.nilable(String),
            next_milestone_suffix: T.nilable(String),
            number_of_winners: T.nilable(Integer),
            order: T.nilable(Integer),
            referral_coupon_code: T.nilable(String),
            referral_description: T.nilable(String),
            referred_reward_upfront: T::Boolean,
            referred_value: T.nilable(GrowsurfRuby::RewardTaxValuation::OrHash),
            value: T.nilable(GrowsurfRuby::RewardTaxValuation::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          is_unlimited:,
          # Shallow custom metadata object.
          metadata:,
          type:,
          commission_structure: nil,
          conversions_required: nil,
          # Legacy static coupon code shown to the referrer in the reward-won email and
          # webhook. Display text only; superseded by a connected billing integration's
          # issued coupon when one exists.
          coupon_code: nil,
          description: nil,
          image_url: nil,
          # `-1` represents an unlimited reward in REST responses.
          limit: nil,
          limit_duration: nil,
          # Text shown before a participant's referral count in milestone-progress copy.
          # Applies to `MILESTONE` rewards.
          next_milestone_prefix: nil,
          # Text shown after a participant's referral count in milestone-progress copy.
          # Applies to `MILESTONE` rewards.
          next_milestone_suffix: nil,
          # The number of winners (`LEADERBOARD` rewards only). With `limitDuration`
          # `PER_MONTH` this many win each month, otherwise this many win in total.
          number_of_winners: nil,
          order: nil,
          # Legacy static coupon code shown to the referred friend (double-sided rewards)
          # in the reward-won email and webhook. Display text only; superseded by a
          # connected billing integration's issued coupon when one exists.
          referral_coupon_code: nil,
          referral_description: nil,
          referred_reward_upfront: nil,
          # Tax valuation for the referred friend's side of a double-sided reward.
          referred_value: nil,
          # Tax valuation for the reward (the referrer's side of a double-sided reward).
          value: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              is_unlimited: T::Boolean,
              metadata: T::Hash[Symbol, T.anything],
              type: GrowsurfRuby::Models::Campaign::Reward::Type::TaggedSymbol,
              commission_structure:
                T.nilable(GrowsurfRuby::CommissionStructure),
              conversions_required: T.nilable(Integer),
              coupon_code: T.nilable(String),
              description: T.nilable(String),
              image_url: T.nilable(String),
              limit: T.nilable(Integer),
              limit_duration:
                T.nilable(
                  GrowsurfRuby::Models::Campaign::Reward::LimitDuration::TaggedSymbol
                ),
              next_milestone_prefix: T.nilable(String),
              next_milestone_suffix: T.nilable(String),
              number_of_winners: T.nilable(Integer),
              order: T.nilable(Integer),
              referral_coupon_code: T.nilable(String),
              referral_description: T.nilable(String),
              referred_reward_upfront: T::Boolean,
              referred_value: T.nilable(GrowsurfRuby::RewardTaxValuation),
              value: T.nilable(GrowsurfRuby::RewardTaxValuation)
            }
          )
        end
        def to_hash
        end

        module Type
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, GrowsurfRuby::Models::Campaign::Reward::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE_SIDED =
            T.let(
              :SINGLE_SIDED,
              GrowsurfRuby::Models::Campaign::Reward::Type::TaggedSymbol
            )
          DOUBLE_SIDED =
            T.let(
              :DOUBLE_SIDED,
              GrowsurfRuby::Models::Campaign::Reward::Type::TaggedSymbol
            )
          MILESTONE =
            T.let(
              :MILESTONE,
              GrowsurfRuby::Models::Campaign::Reward::Type::TaggedSymbol
            )
          LEADERBOARD =
            T.let(
              :LEADERBOARD,
              GrowsurfRuby::Models::Campaign::Reward::Type::TaggedSymbol
            )
          AFFILIATE =
            T.let(
              :AFFILIATE,
              GrowsurfRuby::Models::Campaign::Reward::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Models::Campaign::Reward::Type::TaggedSymbol
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
                GrowsurfRuby::Models::Campaign::Reward::LimitDuration
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_TOTAL =
            T.let(
              :IN_TOTAL,
              GrowsurfRuby::Models::Campaign::Reward::LimitDuration::TaggedSymbol
            )
          PER_MONTH =
            T.let(
              :PER_MONTH,
              GrowsurfRuby::Models::Campaign::Reward::LimitDuration::TaggedSymbol
            )
          PER_YEAR =
            T.let(
              :PER_YEAR,
              GrowsurfRuby::Models::Campaign::Reward::LimitDuration::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Models::Campaign::Reward::LimitDuration::TaggedSymbol
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
