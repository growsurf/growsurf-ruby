# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class RewardUpdateParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::RewardUpdateParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :reward_id

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

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_active

        sig { params(is_active: T::Boolean).void }
        attr_writer :is_active

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_unlimited

        sig { params(is_unlimited: T::Boolean).void }
        attr_writer :is_unlimited

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
              GrowsurfRuby::Models::Campaign::RewardUpdateParams::LimitDuration::OrSymbol
            )
          )
        end
        attr_reader :limit_duration

        sig do
          params(
            limit_duration:
              GrowsurfRuby::Models::Campaign::RewardUpdateParams::LimitDuration::OrSymbol
          ).void
        end
        attr_writer :limit_duration

        # Custom key/value metadata (single-level; values are stored as strings).
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, T.anything]).void }
        attr_writer :metadata

        sig { returns(T.nilable(String)) }
        attr_reader :next_milestone_prefix

        sig { params(next_milestone_prefix: String).void }
        attr_writer :next_milestone_prefix

        sig { returns(T.nilable(String)) }
        attr_reader :next_milestone_suffix

        sig { params(next_milestone_suffix: String).void }
        attr_writer :next_milestone_suffix

        sig { returns(T.nilable(Integer)) }
        attr_reader :number_of_winners

        sig { params(number_of_winners: Integer).void }
        attr_writer :number_of_winners

        sig { returns(T.nilable(Integer)) }
        attr_reader :order

        sig { params(order: Integer).void }
        attr_writer :order

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

        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig do
          params(
            id: String,
            reward_id: String,
            commission_structure: GrowsurfRuby::CommissionStructure::OrHash,
            conversions_required: Integer,
            coupon_code: String,
            description: String,
            image_url: String,
            is_active: T::Boolean,
            is_unlimited: T::Boolean,
            is_visible: T::Boolean,
            limit: Integer,
            limit_duration:
              GrowsurfRuby::Models::Campaign::RewardUpdateParams::LimitDuration::OrSymbol,
            metadata: T::Hash[Symbol, T.anything],
            next_milestone_prefix: String,
            next_milestone_suffix: String,
            number_of_winners: Integer,
            order: Integer,
            referral_coupon_code: String,
            referral_description: String,
            referred_reward_upfront: T::Boolean,
            title: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          reward_id:,
          commission_structure: nil,
          conversions_required: nil,
          coupon_code: nil,
          description: nil,
          image_url: nil,
          is_active: nil,
          is_unlimited: nil,
          is_visible: nil,
          limit: nil,
          limit_duration: nil,
          # Custom key/value metadata (single-level; values are stored as strings).
          metadata: nil,
          next_milestone_prefix: nil,
          next_milestone_suffix: nil,
          number_of_winners: nil,
          order: nil,
          referral_coupon_code: nil,
          referral_description: nil,
          referred_reward_upfront: nil,
          title: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              reward_id: String,
              commission_structure: GrowsurfRuby::CommissionStructure::OrHash,
              conversions_required: Integer,
              coupon_code: String,
              description: String,
              image_url: String,
              is_active: T::Boolean,
              is_unlimited: T::Boolean,
              is_visible: T::Boolean,
              limit: Integer,
              limit_duration:
                GrowsurfRuby::Models::Campaign::RewardUpdateParams::LimitDuration::OrSymbol,
              metadata: T::Hash[Symbol, T.anything],
              next_milestone_prefix: String,
              next_milestone_suffix: String,
              number_of_winners: Integer,
              order: Integer,
              referral_coupon_code: String,
              referral_description: String,
              referred_reward_upfront: T::Boolean,
              title: String,
              request_options: GrowsurfRuby::RequestOptions
            }
          )
        end
        def to_hash
        end

        module LimitDuration
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                GrowsurfRuby::Models::Campaign::RewardUpdateParams::LimitDuration
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_TOTAL =
            T.let(
              :IN_TOTAL,
              GrowsurfRuby::Models::Campaign::RewardUpdateParams::LimitDuration::TaggedSymbol
            )
          PER_MONTH =
            T.let(
              :PER_MONTH,
              GrowsurfRuby::Models::Campaign::RewardUpdateParams::LimitDuration::TaggedSymbol
            )
          PER_YEAR =
            T.let(
              :PER_YEAR,
              GrowsurfRuby::Models::Campaign::RewardUpdateParams::LimitDuration::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Models::Campaign::RewardUpdateParams::LimitDuration::TaggedSymbol
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
