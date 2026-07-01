# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      class Rewards
        # Retrieves the active, visible, and enabled rewards configured for a program.
        sig do
          params(
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::CampaignRewardListResponse)
        end
        def list(
          # GrowSurf program ID.
          id,
          request_options: {}
        )
        end

        # Creates a reward for a program. The reward `type` must be compatible with the
        # program type.
        sig do
          params(
            id: String,
            type:
              GrowsurfRuby::Models::Campaign::RewardCreateParams::Type::OrSymbol,
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
              GrowsurfRuby::Models::Campaign::RewardCreateParams::LimitDuration::OrSymbol,
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
          ).returns(GrowsurfRuby::Models::Campaign::Reward)
        end
        def create(
          # Path param: GrowSurf program ID.
          id,
          # Body param: The reward type. Immutable after creation.
          type:,
          # Body param
          commission_structure: nil,
          # Body param
          conversions_required: nil,
          # Body param
          coupon_code: nil,
          # Body param
          description: nil,
          # Body param
          image_url: nil,
          # Body param
          is_active: nil,
          # Body param
          is_unlimited: nil,
          # Body param
          is_visible: nil,
          # Body param
          limit: nil,
          # Body param
          limit_duration: nil,
          # Body param: Custom key/value metadata (single-level; values are stored as
          # strings).
          metadata: nil,
          # Body param
          next_milestone_prefix: nil,
          # Body param
          next_milestone_suffix: nil,
          # Body param
          number_of_winners: nil,
          # Body param
          order: nil,
          # Body param
          referral_coupon_code: nil,
          # Body param
          referral_description: nil,
          # Body param
          referred_reward_upfront: nil,
          # Body param
          title: nil,
          request_options: {}
        )
        end

        # Updates an existing program reward. Only the fields you send are changed; `type`
        # is immutable and must not be supplied.
        sig do
          params(
            reward_id: String,
            id: String,
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
          ).returns(GrowsurfRuby::Models::Campaign::Reward)
        end
        def update(
          # Path param: Program reward ID.
          reward_id,
          # Path param: GrowSurf program ID.
          id:,
          # Body param
          commission_structure: nil,
          # Body param
          conversions_required: nil,
          # Body param
          coupon_code: nil,
          # Body param
          description: nil,
          # Body param
          image_url: nil,
          # Body param
          is_active: nil,
          # Body param
          is_unlimited: nil,
          # Body param
          is_visible: nil,
          # Body param
          limit: nil,
          # Body param
          limit_duration: nil,
          # Body param: Custom key/value metadata (single-level; values are stored as
          # strings).
          metadata: nil,
          # Body param
          next_milestone_prefix: nil,
          # Body param
          next_milestone_suffix: nil,
          # Body param
          number_of_winners: nil,
          # Body param
          order: nil,
          # Body param
          referral_coupon_code: nil,
          # Body param
          referral_description: nil,
          # Body param
          referred_reward_upfront: nil,
          # Body param
          title: nil,
          request_options: {}
        )
        end

        # Deletes a program reward.
        sig do
          params(
            reward_id: String,
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::DeleteRewardResponse)
        end
        def delete(
          # Program reward ID.
          reward_id,
          # GrowSurf program ID.
          id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: GrowsurfRuby::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
