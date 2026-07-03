# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      class Rewards
        # Retrieves the active, visible, and enabled rewards configured for a program.
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

        # Creates a reward for a program. The reward `type` must be compatible with the
        # program type.
        #
        # @overload create(id, type:, commission_structure: nil, conversions_required: nil, coupon_code: nil, description: nil, image_url: nil, is_active: nil, is_unlimited: nil, is_visible: nil, limit: nil, limit_duration: nil, metadata: nil, next_milestone_prefix: nil, next_milestone_suffix: nil, number_of_winners: nil, order: nil, referral_coupon_code: nil, referral_description: nil, referred_reward_upfront: nil, referred_value: nil, title: nil, value: nil, request_options: {})
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param type [Symbol, GrowsurfRuby::Models::Campaign::RewardCreateParams::Type] Body param: The reward type. Immutable after creation.
        #
        # @param commission_structure [GrowsurfRuby::Models::CommissionStructure] Body param
        #
        # @param conversions_required [Integer] Body param
        #
        # @param coupon_code [String] Body param
        #
        # @param description [String] Body param
        #
        # @param image_url [String] Body param
        #
        # @param is_active [Boolean] Body param
        #
        # @param is_unlimited [Boolean] Body param
        #
        # @param is_visible [Boolean] Body param
        #
        # @param limit [Integer] Body param
        #
        # @param limit_duration [Symbol, GrowsurfRuby::Models::Campaign::RewardCreateParams::LimitDuration] Body param
        #
        # @param metadata [Hash{Symbol=>Object}] Body param: Custom key/value metadata (single-level; values are stored as string
        #
        # @param next_milestone_prefix [String] Body param
        #
        # @param next_milestone_suffix [String] Body param
        #
        # @param number_of_winners [Integer] Body param
        #
        # @param order [Integer] Body param
        #
        # @param referral_coupon_code [String] Body param
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

        # Updates an existing campaign reward. Only the fields you send are changed;
        # `type` is immutable and must not be supplied.
        #
        # @overload update(campaign_reward_id, id:, commission_structure: nil, conversions_required: nil, coupon_code: nil, description: nil, image_url: nil, is_active: nil, is_unlimited: nil, is_visible: nil, limit: nil, limit_duration: nil, metadata: nil, next_milestone_prefix: nil, next_milestone_suffix: nil, number_of_winners: nil, order: nil, referral_coupon_code: nil, referral_description: nil, referred_reward_upfront: nil, referred_value: nil, title: nil, value: nil, request_options: {})
        #
        # @param campaign_reward_id [String] Path param: Campaign reward ID.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param commission_structure [GrowsurfRuby::Models::CommissionStructure] Body param
        #
        # @param conversions_required [Integer] Body param
        #
        # @param coupon_code [String] Body param
        #
        # @param description [String] Body param
        #
        # @param image_url [String] Body param
        #
        # @param is_active [Boolean] Body param
        #
        # @param is_unlimited [Boolean] Body param
        #
        # @param is_visible [Boolean] Body param
        #
        # @param limit [Integer] Body param
        #
        # @param limit_duration [Symbol, GrowsurfRuby::Models::Campaign::RewardUpdateParams::LimitDuration] Body param
        #
        # @param metadata [Hash{Symbol=>Object}] Body param: Custom key/value metadata (single-level; values are stored as string
        #
        # @param next_milestone_prefix [String] Body param
        #
        # @param next_milestone_suffix [String] Body param
        #
        # @param number_of_winners [Integer] Body param
        #
        # @param order [Integer] Body param
        #
        # @param referral_coupon_code [String] Body param
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

        # Deletes a campaign reward.
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
