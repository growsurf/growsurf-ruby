# frozen_string_literal: true

require_relative "../../test_helper"

class GrowsurfRuby::Test::Resources::Campaign::RewardsTest < GrowsurfRuby::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.rewards.list("id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::CampaignRewardListResponse
    end

    assert_pattern do
      response => {
        rewards: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::Reward])
      }
    end
  end

  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.rewards.create("id", type: :SINGLE_SIDED)

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::Reward
    end

    assert_pattern do
      response => {
        id: String,
        is_unlimited: GrowsurfRuby::Internal::Type::Boolean,
        metadata: ^(GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]),
        type: GrowsurfRuby::Models::Campaign::Reward::Type,
        commission_structure: GrowsurfRuby::CommissionStructure | nil,
        conversions_required: Integer | nil,
        coupon_code: String | nil,
        description: String | nil,
        image_url: String | nil,
        limit: Integer | nil,
        limit_duration: GrowsurfRuby::Models::Campaign::Reward::LimitDuration | nil,
        next_milestone_prefix: String | nil,
        next_milestone_suffix: String | nil,
        number_of_winners: Integer | nil,
        order: Integer | nil,
        referral_coupon_code: String | nil,
        referral_description: String | nil,
        referred_reward_upfront: GrowsurfRuby::Internal::Type::Boolean | nil,
        referred_value: GrowsurfRuby::RewardTaxValuation | nil,
        value: GrowsurfRuby::RewardTaxValuation | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.rewards.update("rewardId", id: "id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::Reward
    end

    assert_pattern do
      response => {
        id: String,
        is_unlimited: GrowsurfRuby::Internal::Type::Boolean,
        metadata: ^(GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]),
        type: GrowsurfRuby::Models::Campaign::Reward::Type,
        commission_structure: GrowsurfRuby::CommissionStructure | nil,
        conversions_required: Integer | nil,
        coupon_code: String | nil,
        description: String | nil,
        image_url: String | nil,
        limit: Integer | nil,
        limit_duration: GrowsurfRuby::Models::Campaign::Reward::LimitDuration | nil,
        next_milestone_prefix: String | nil,
        next_milestone_suffix: String | nil,
        number_of_winners: Integer | nil,
        order: Integer | nil,
        referral_coupon_code: String | nil,
        referral_description: String | nil,
        referred_reward_upfront: GrowsurfRuby::Internal::Type::Boolean | nil,
        referred_value: GrowsurfRuby::RewardTaxValuation | nil,
        value: GrowsurfRuby::RewardTaxValuation | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.rewards.delete("rewardId", id: "id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::DeleteRewardResponse
    end

    assert_pattern do
      response => {
        id: String,
        success: GrowsurfRuby::Internal::Type::Boolean
      }
    end
  end
end
