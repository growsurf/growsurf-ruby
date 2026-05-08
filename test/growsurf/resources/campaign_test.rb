# frozen_string_literal: true

require_relative "../test_helper"

class Growsurf::Test::Resources::CampaignTest < Growsurf::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.retrieve("id")

    assert_pattern do
      response => Growsurf::CampaignAPI
    end

    assert_pattern do
      response => {
        id: String,
        impression_count: Integer,
        invite_count: Integer,
        name: String,
        participant_count: Integer,
        referral_count: Integer,
        rewards: ^(Growsurf::Internal::Type::ArrayOf[Growsurf::CampaignAPI::Reward]),
        status: Growsurf::CampaignAPI::Status,
        type: Growsurf::CampaignAPI::Type,
        winner_count: Integer,
        currency_iso: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.list

    assert_pattern do
      response => Growsurf::Models::CampaignListResponse
    end

    assert_pattern do
      response => {
        campaigns: ^(Growsurf::Internal::Type::ArrayOf[Growsurf::CampaignAPI])
      }
    end
  end

  def test_list_commissions
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.list_commissions("id")

    assert_pattern do
      response => Growsurf::ParticipantCommissionList
    end

    assert_pattern do
      response => {
        commissions: ^(Growsurf::Internal::Type::ArrayOf[Growsurf::ParticipantCommissionList::Commission]),
        limit: Integer,
        next_id: String | nil
      }
    end
  end

  def test_list_leaderboard
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.list_leaderboard("id")

    assert_pattern do
      response => Growsurf::ParticipantList
    end

    assert_pattern do
      response => {
        limit: Integer,
        next_id: String | nil,
        participants: ^(Growsurf::Internal::Type::ArrayOf[Growsurf::Campaign::CampaignParticipant])
      }
    end
  end

  def test_list_participants
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.list_participants("id")

    assert_pattern do
      response => Growsurf::ParticipantList
    end

    assert_pattern do
      response => {
        limit: Integer,
        next_id: String | nil,
        participants: ^(Growsurf::Internal::Type::ArrayOf[Growsurf::Campaign::CampaignParticipant])
      }
    end
  end

  def test_list_payouts
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.list_payouts("id")

    assert_pattern do
      response => Growsurf::ParticipantPayoutList
    end

    assert_pattern do
      response => {
        limit: Integer,
        next_id: String | nil,
        payouts: ^(Growsurf::Internal::Type::ArrayOf[Growsurf::ParticipantPayoutList::Payout])
      }
    end
  end

  def test_list_referrals
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.list_referrals("id")

    assert_pattern do
      response => Growsurf::ReferralList
    end

    assert_pattern do
      response => {
        limit: Integer,
        more: Growsurf::Internal::Type::Boolean,
        referrals: ^(Growsurf::Internal::Type::ArrayOf[Growsurf::ReferralList::Referral]),
        next_id: String | nil,
        next_offset: Integer | nil
      }
    end
  end

  def test_retrieve_analytics
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.retrieve_analytics("id")

    assert_pattern do
      response => Growsurf::Models::CampaignRetrieveAnalyticsResponse
    end

    assert_pattern do
      response => {
        analytics: Growsurf::Models::CampaignRetrieveAnalyticsResponse::Analytics,
        end_date: Integer,
        start_date: Integer
      }
    end
  end
end
