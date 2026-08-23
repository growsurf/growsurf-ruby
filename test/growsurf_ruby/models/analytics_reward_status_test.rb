# frozen_string_literal: true

require_relative "../test_helper"

class GrowsurfRuby::Test::AnalyticsRewardStatusTest < Minitest::Test
  def test_campaign_and_participant_analytics_share_reward_status_buckets
    reward_status = GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::RewardStatus.new(
      unapproved: 1,
      unfulfilled: 2,
      completed: 3
    )
    participant_analytics = GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse::Analytics.new(
      reward_status: reward_status
    )

    assert_equal(1, reward_status.unapproved)
    assert_equal(2, participant_analytics.reward_status.unfulfilled)
    refute_respond_to(reward_status, :pending)
    refute_respond_to(reward_status, :approved)
    refute_respond_to(participant_analytics, :pending_rewards)
    refute_respond_to(participant_analytics, :rewards_earned)
  end

  def test_analytics_models_expose_unique_commission_referrals
    campaign_analytics = GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics.new(
      unique_commission_referrals: 4
    )
    campaign_series = GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Series.new(
      unique_commission_referrals: 3
    )
    participant_series = GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse::Series.new(
      unique_commission_referrals: 2
    )

    assert_equal(4, campaign_analytics.unique_commission_referrals)
    assert_equal(3, campaign_series.unique_commission_referrals)
    assert_equal(2, participant_series.unique_commission_referrals)
    assert_equal(
      {uniqueCommissionReferrals: 4},
      GrowsurfRuby::Internal::Type::Converter.dump(campaign_analytics.class, campaign_analytics)
    )
  end
end
