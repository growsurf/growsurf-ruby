# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      class Rewards
        # Retrieves the list of a program's configured rewards (`CampaignReward`s) — the
        # same set embedded in the `rewards` array of the campaign response. Delete a
        # reward with `DELETE /campaign/{id}/reward-configs/{campaignRewardId}`.
        #
        # @overload list(id, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::CampaignRewardListResponse]
        def list(id, params = {})
          @client.request(
            method: :get,
            path: ["campaign/%1$s/reward-configs", id],
            model: GrowsurfRuby::Models::Campaign::CampaignRewardListResponse,
            options: params[:request_options]
          )
        end

        # Creates a new campaign reward (`CampaignReward`) with a GrowSurf-assigned ID.
        # The reward type must be compatible with the program type (affiliate programs
        # support only `AFFILIATE` rewards; referral programs support all other types).
        # Enabling an active reward of a type automatically enables that reward type on
        # the program.
        #
        # @overload create(id, type:, commission_structure: nil, conversions_required: nil, coupon_code: nil, description: nil, image_url: nil, is_unlimited: nil, is_visible: nil, limit: nil, limit_duration: nil, metadata: nil, next_milestone_prefix: nil, next_milestone_suffix: nil, number_of_winners: nil, order: nil, referral_coupon_code: nil, referral_description: nil, referred_reward_upfront: nil, referred_value: nil, title: nil, value: nil, request_options: {})
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param type [Symbol, GrowsurfRuby::Models::Campaign::RewardCreateParams::Type] Body param: The reward type. Immutable after creation.
        #
        # @param commission_structure [GrowsurfRuby::Models::CommissionStructure] Body param
        #
        # @param conversions_required [Integer] Body param
        #
        # @param coupon_code [String] Body param: Legacy static coupon code shown to the referrer in the reward-won emai
        #
        # @param description [String] Body param
        #
        # @param image_url [String] Body param
        #
        # @param is_unlimited [Boolean] Body param: Whether the reward can be earned an unlimited number of times. Defaul
        #
        # @param is_visible [Boolean] Body param: Whether the reward is enabled. When `false` the reward is disabled: hi
        #
        # @param limit [Integer] Body param
        #
        # @param limit_duration [Symbol, GrowsurfRuby::Models::Campaign::RewardCreateParams::LimitDuration] Body param
        #
        # @param metadata [Hash{Symbol=>Object}] Body param: Custom key/value metadata (single-level; values are stored as string
        #
        # @param next_milestone_prefix [String] Body param: Text shown before a participant's referral count in milestone-prog
        #
        # @param next_milestone_suffix [String] Body param: Text shown after a participant's referral count in milestone-progr
        #
        # @param number_of_winners [Integer] Body param: The number of winners (`LEADERBOARD` rewards only). With `limitDur
        #
        # @param order [Integer] Body param
        #
        # @param referral_coupon_code [String] Body param: Legacy static coupon code shown to the referred friend (double-si
        #
        # @param referral_description [String] Body param
        #
        # @param referred_reward_upfront [Boolean] Body param
        #
        # @param referred_value [GrowsurfRuby::Models::RewardTaxValuation] Body param: Tax valuation for the referred friend's side of a double-sided rewa
        #
        # @param title [String] Body param
        #
        # @param value [GrowsurfRuby::Models::RewardTaxValuation] Body param: Tax valuation for the reward (the referrer's side of a double-sided
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::Reward]
        #
        # @see GrowsurfRuby::Models::Campaign::RewardCreateParams
        def create(id, params)
          parsed, options = GrowsurfRuby::Campaign::RewardCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["campaign/%1$s/reward-configs", id],
            body: parsed,
            model: GrowsurfRuby::Models::Campaign::Reward,
            options: options
          )
        end

        # Updates an existing campaign reward (`CampaignReward`). The reward `type` is
        # immutable and cannot be changed. When the update replaces `metadata`, renamed
        # keys automatically rewrite any `{{campaignReward[…]}}` references in campaign
        # copy; removing a key that campaign copy still references returns a `409` listing
        # the referencing fields.
        #
        # @overload update(campaign_reward_id, id:, commission_structure: nil, conversions_required: nil, coupon_code: nil, description: nil, image_url: nil, is_unlimited: nil, is_visible: nil, limit: nil, limit_duration: nil, metadata: nil, next_milestone_prefix: nil, next_milestone_suffix: nil, number_of_winners: nil, order: nil, referral_coupon_code: nil, referral_description: nil, referred_reward_upfront: nil, referred_value: nil, title: nil, value: nil, request_options: {})
        #
        # @param campaign_reward_id [String] Path param: Campaign reward ID.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param commission_structure [GrowsurfRuby::Models::CommissionStructure] Body param
        #
        # @param conversions_required [Integer] Body param
        #
        # @param coupon_code [String] Body param: Legacy static coupon code shown to the referrer in the reward-won emai
        #
        # @param description [String] Body param
        #
        # @param image_url [String] Body param
        #
        # @param is_unlimited [Boolean] Body param: Whether the reward can be earned an unlimited number of times. Defaul
        #
        # @param is_visible [Boolean] Body param: Whether the reward is enabled. When `false` the reward is disabled: hi
        #
        # @param limit [Integer] Body param
        #
        # @param limit_duration [Symbol, GrowsurfRuby::Models::Campaign::RewardUpdateParams::LimitDuration] Body param
        #
        # @param metadata [Hash{Symbol=>Object}] Body param: Custom key/value metadata (single-level; values are stored as string
        #
        # @param next_milestone_prefix [String] Body param: Text shown before a participant's referral count in milestone-prog
        #
        # @param next_milestone_suffix [String] Body param: Text shown after a participant's referral count in milestone-progr
        #
        # @param number_of_winners [Integer] Body param: The number of winners (`LEADERBOARD` rewards only). With `limitDur
        #
        # @param order [Integer] Body param
        #
        # @param referral_coupon_code [String] Body param: Legacy static coupon code shown to the referred friend (double-si
        #
        # @param referral_description [String] Body param
        #
        # @param referred_reward_upfront [Boolean] Body param
        #
        # @param referred_value [GrowsurfRuby::Models::RewardTaxValuation] Body param: Tax valuation for the referred friend's side of a double-sided rewa
        #
        # @param title [String] Body param
        #
        # @param value [GrowsurfRuby::Models::RewardTaxValuation] Body param: Tax valuation for the reward (the referrer's side of a double-sided
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::Reward]
        #
        # @see GrowsurfRuby::Models::Campaign::RewardUpdateParams
        def update(campaign_reward_id, params)
          parsed, options = GrowsurfRuby::Campaign::RewardUpdateParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["campaign/%1$s/reward-configs/%2$s", id, campaign_reward_id],
            body: parsed,
            model: GrowsurfRuby::Models::Campaign::Reward,
            options: options
          )
        end

        # Deletes a campaign reward (`CampaignReward`). The reward is deactivated, removed
        # from the program's reward set, and any connected upfront-discount coupons are
        # cleaned up. If campaign copy still references any of the reward's metadata keys
        # via `{{campaignReward[…]}}` tokens, the delete returns a `409` listing the
        # referencing fields — update those fields first.
        #
        # @overload delete(campaign_reward_id, id:, request_options: {})
        #
        # @param campaign_reward_id [String] Campaign reward ID.
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::DeleteRewardResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::RewardDeleteParams
        def delete(campaign_reward_id, params)
          parsed, options = GrowsurfRuby::Campaign::RewardDeleteParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["campaign/%1$s/reward-configs/%2$s", id, campaign_reward_id],
            model: GrowsurfRuby::Models::Campaign::DeleteRewardResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [GrowsurfRuby::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
