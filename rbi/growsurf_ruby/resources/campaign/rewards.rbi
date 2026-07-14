# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      class Rewards
        # Retrieves the list of a program's configured rewards (`CampaignReward`s) — the
        # same set embedded in the `rewards` array of the campaign response. Delete a
        # reward with `DELETE /campaign/{id}/reward-configs/{campaignRewardId}`.
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

        # Creates a new campaign reward (`CampaignReward`) with a GrowSurf-assigned ID.
        # The reward type must be compatible with the program type (affiliate programs
        # support only `AFFILIATE` rewards; referral programs support all other types).
        # Enabling an active reward of a type automatically enables that reward type on
        # the program.
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
          # Body param: Legacy static coupon code shown to the referrer in the reward-won
          # email and webhook. Display text only; superseded by a connected billing
          # integration's issued coupon when one exists.
          coupon_code: nil,
          # Body param
          description: nil,
          # Body param
          image_url: nil,
          # Body param: Whether the reward can be earned an unlimited number of times.
          # Defaults to `true`, except `MILESTONE` rewards, which can only be earned once.
          is_unlimited: nil,
          # Body param: Whether the reward is enabled. When `false` the reward is disabled:
          # hidden from participants and no longer awarded, including those who already
          # earned it.
          is_visible: nil,
          # Body param
          limit: nil,
          # Body param
          limit_duration: nil,
          # Body param: Custom key/value metadata (single-level; values are stored as
          # strings).
          metadata: nil,
          # Body param: Text shown before a participant's referral count in
          # milestone-progress copy. Applies to `MILESTONE` rewards.
          next_milestone_prefix: nil,
          # Body param: Text shown after a participant's referral count in
          # milestone-progress copy. Applies to `MILESTONE` rewards.
          next_milestone_suffix: nil,
          # Body param: The number of winners (`LEADERBOARD` rewards only). With
          # `limitDuration` `PER_MONTH` this many win each month, otherwise this many win
          # in total; omitting it defaults to `3`.
          number_of_winners: nil,
          # Body param
          order: nil,
          # Body param: Legacy static coupon code shown to the referred friend
          # (double-sided rewards) in the reward-won email and webhook. Display text only;
          # superseded by a connected billing integration's issued coupon when one exists.
          referral_coupon_code: nil,
          # Body param
          referral_description: nil,
          # Body param
          referred_reward_upfront: nil,
          # Body param: Tax valuation for the referred friend's side of a double-sided
          # reward. Defaults to not tax-reportable (a purchase rebate).
          referred_value: nil,
          # Body param
          title: nil,
          # Body param: Tax valuation for the reward (the referrer's side of a
          # double-sided reward). Used by tax documentation / 1099 reporting.
          value: nil,
          request_options: {}
        )
        end

        # Updates an existing campaign reward (`CampaignReward`). The reward `type` is
        # immutable and cannot be changed. When the update replaces `metadata`, renamed
        # keys automatically rewrite any `{{campaignReward[…]}}` references in campaign
        # copy; removing a key that campaign copy still references returns a `409` listing
        # the referencing fields.
        sig do
          params(
            campaign_reward_id: String,
            id: String,
            commission_structure: GrowsurfRuby::CommissionStructure::OrHash,
            conversions_required: Integer,
            coupon_code: String,
            description: String,
            image_url: String,
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
            referred_value: GrowsurfRuby::RewardTaxValuation::OrHash,
            title: String,
            value: GrowsurfRuby::RewardTaxValuation::OrHash,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::Reward)
        end
        def update(
          # Path param: Campaign reward ID.
          campaign_reward_id,
          # Path param: GrowSurf program ID.
          id:,
          # Body param
          commission_structure: nil,
          # Body param
          conversions_required: nil,
          # Body param: Legacy static coupon code shown to the referrer in the reward-won
          # email and webhook. Display text only; superseded by a connected billing
          # integration's issued coupon when one exists.
          coupon_code: nil,
          # Body param
          description: nil,
          # Body param
          image_url: nil,
          # Body param: Whether the reward can be earned an unlimited number of times.
          # Defaults to `true`, except `MILESTONE` rewards, which can only be earned once.
          is_unlimited: nil,
          # Body param: Whether the reward is enabled. When `false` the reward is disabled:
          # hidden from participants and no longer awarded, including those who already
          # earned it.
          is_visible: nil,
          # Body param
          limit: nil,
          # Body param
          limit_duration: nil,
          # Body param: Custom key/value metadata (single-level; values are stored as
          # strings).
          metadata: nil,
          # Body param: Text shown before a participant's referral count in
          # milestone-progress copy. Applies to `MILESTONE` rewards.
          next_milestone_prefix: nil,
          # Body param: Text shown after a participant's referral count in
          # milestone-progress copy. Applies to `MILESTONE` rewards.
          next_milestone_suffix: nil,
          # Body param: The number of winners (`LEADERBOARD` rewards only). With
          # `limitDuration` `PER_MONTH` this many win each month, otherwise this many win
          # in total; omitting it defaults to `3`.
          number_of_winners: nil,
          # Body param
          order: nil,
          # Body param: Legacy static coupon code shown to the referred friend
          # (double-sided rewards) in the reward-won email and webhook. Display text only;
          # superseded by a connected billing integration's issued coupon when one exists.
          referral_coupon_code: nil,
          # Body param
          referral_description: nil,
          # Body param
          referred_reward_upfront: nil,
          # Body param: Tax valuation for the referred friend's side of a double-sided
          # reward. Defaults to not tax-reportable (a purchase rebate).
          referred_value: nil,
          # Body param
          title: nil,
          # Body param: Tax valuation for the reward (the referrer's side of a
          # double-sided reward). Used by tax documentation / 1099 reporting.
          value: nil,
          request_options: {}
        )
        end

        # Deletes a campaign reward (`CampaignReward`). The reward is deactivated, removed
        # from the program's reward set, and any connected upfront-discount coupons are
        # cleaned up. If campaign copy still references any of the reward's metadata keys
        # via `{{campaignReward[…]}}` tokens, the delete returns a `409` listing the
        # referencing fields — update those fields first.
        sig do
          params(
            campaign_reward_id: String,
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::DeleteRewardResponse)
        end
        def delete(
          # Campaign reward ID.
          campaign_reward_id,
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
