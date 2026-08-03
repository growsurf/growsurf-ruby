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
end
