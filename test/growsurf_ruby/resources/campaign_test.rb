# frozen_string_literal: true

require_relative "../test_helper"

class GrowsurfRuby::Test::Resources::CampaignTest < GrowsurfRuby::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.retrieve("id")

    assert_pattern do
      response => GrowsurfRuby::CampaignAPI
    end

    assert_pattern do
      response => {
        id: String,
        impression_count: Integer,
        invite_count: Integer,
        name: String,
        participant_count: Integer,
        referral_count: Integer,
        rewards: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::CampaignAPI::Reward]),
        status: GrowsurfRuby::CampaignAPI::Status,
        type: GrowsurfRuby::CampaignAPI::Type,
        winner_count: Integer,
        currency_iso: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.list

    assert_pattern do
      response => GrowsurfRuby::Models::CampaignListResponse
    end

    assert_pattern do
      response => {
        campaigns: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::CampaignAPI])
      }
    end
  end

  def test_create_mobile_participant_token_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.create_mobile_participant_token("id", email: "dev@stainless.com")

    assert_pattern do
      response => GrowsurfRuby::Models::CampaignCreateMobileParticipantTokenResponse
    end

    assert_pattern do
      response => {
        expires_in: Integer,
        is_new: GrowsurfRuby::Internal::Type::Boolean,
        participant: GrowsurfRuby::Campaign::CampaignParticipant,
        participant_token: String
      }
    end
  end

  def test_list_commissions
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.list_commissions("id")

    assert_pattern do
      response => GrowsurfRuby::ParticipantCommissionList
    end

    assert_pattern do
      response => {
        commissions: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::ParticipantCommissionList::Commission]),
        limit: Integer,
        next_id: String | nil
      }
    end
  end

  def test_list_leaderboard
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.list_leaderboard("id")

    assert_pattern do
      response => GrowsurfRuby::ParticipantList
    end

    assert_pattern do
      response => {
        limit: Integer,
        next_id: String | nil,
        participants: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::CampaignParticipant])
      }
    end
  end

  def test_list_participants
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.list_participants("id")

    assert_pattern do
      response => GrowsurfRuby::ParticipantList
    end

    assert_pattern do
      response => {
        limit: Integer,
        next_id: String | nil,
        participants: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::CampaignParticipant])
      }
    end
  end

  def test_list_payouts
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.list_payouts("id")

    assert_pattern do
      response => GrowsurfRuby::ParticipantPayoutList
    end

    assert_pattern do
      response => {
        limit: Integer,
        next_id: String | nil,
        payouts: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::ParticipantPayoutList::Payout])
      }
    end
  end

  def test_list_referrals
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.list_referrals("id")

    assert_pattern do
      response => GrowsurfRuby::ReferralList
    end

    assert_pattern do
      response => {
        limit: Integer,
        more: GrowsurfRuby::Internal::Type::Boolean,
        referrals: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::ReferralList::Referral]),
        next_id: String | nil,
        next_offset: Integer | nil
      }
    end
  end

  def test_retrieve_analytics
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.retrieve_analytics("id")

    assert_pattern do
      response => GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse
    end

    assert_pattern do
      response => {
        analytics: GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics,
        end_date: Integer,
        start_date: Integer
      }
    end
  end
end
