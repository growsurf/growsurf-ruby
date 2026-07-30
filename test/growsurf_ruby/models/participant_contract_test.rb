# frozen_string_literal: true

require_relative "../test_helper"

class GrowsurfRuby::Test::ParticipantContractTest < Minitest::Test
  def test_affiliate_participant_can_omit_share_url
    participant = GrowsurfRuby::Campaign::CampaignParticipant.new(
      id: "participant-id",
      email: "affiliate@example.com",
      monthly_rank: 0,
      monthly_referral_count: 0,
      rank: 0,
      referral_count: 0,
      rewards: []
    )

    assert_nil(participant.share_url)
  end
end
