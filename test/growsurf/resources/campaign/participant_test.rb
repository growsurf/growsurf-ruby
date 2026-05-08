# frozen_string_literal: true

require_relative "../../test_helper"

class Growsurf::Test::Resources::Campaign::ParticipantTest < Growsurf::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.retrieve("participantIdOrEmail", id: "id")

    assert_pattern do
      response => Growsurf::Campaign::CampaignParticipant
    end

    assert_pattern do
      response => {
        id: String,
        email: String,
        monthly_rank: Integer,
        monthly_referral_count: Integer,
        rank: Integer,
        referral_count: Integer,
        rewards: ^(Growsurf::Internal::Type::ArrayOf[Growsurf::Campaign::ParticipantReward]),
        share_url: String,
        all_matching_fraudsters: ^(Growsurf::Internal::Type::ArrayOf[Growsurf::Internal::Type::HashOf[Growsurf::Internal::Type::Unknown]]) | nil,
        created_at: Integer | nil,
        fingerprint: String | nil,
        first_name: String | nil,
        fraud_reason_code: String | nil,
        fraud_risk_level: Growsurf::Campaign::FraudRiskLevel | nil,
        impression_count: Integer | nil,
        invite_count: Integer | nil,
        ip_address: String | nil,
        is_new: Growsurf::Internal::Type::Boolean | nil,
        is_winner: Growsurf::Internal::Type::Boolean | nil,
        last_name: String | nil,
        metadata: ^(Growsurf::Internal::Type::HashOf[Growsurf::Internal::Type::Unknown]) | nil,
        monthly_referrals: ^(Growsurf::Internal::Type::ArrayOf[String]) | nil,
        notes: String | nil,
        paypal_email_address: String | nil,
        prev_monthly_rank: Integer | nil,
        prev_monthly_referral_count: Integer | nil,
        referrals: ^(Growsurf::Internal::Type::ArrayOf[String]) | nil,
        referral_source: Growsurf::Campaign::ReferralSource | nil,
        referral_status: Growsurf::Campaign::ReferralStatus | nil,
        referred_by: String | nil,
        referrer: Growsurf::Campaign::CampaignParticipant::Referrer | nil,
        share_count: ^(Growsurf::Internal::Type::HashOf[Integer]) | nil,
        unique_impression_count: Integer | nil,
        unread_commissions_count: Integer | nil,
        unread_payouts_count: Integer | nil,
        unsubscribed: Growsurf::Internal::Type::Boolean | nil,
        vanity_keys: ^(Growsurf::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.update("participantIdOrEmail", id: "id")

    assert_pattern do
      response => Growsurf::Campaign::CampaignParticipant
    end

    assert_pattern do
      response => {
        id: String,
        email: String,
        monthly_rank: Integer,
        monthly_referral_count: Integer,
        rank: Integer,
        referral_count: Integer,
        rewards: ^(Growsurf::Internal::Type::ArrayOf[Growsurf::Campaign::ParticipantReward]),
        share_url: String,
        all_matching_fraudsters: ^(Growsurf::Internal::Type::ArrayOf[Growsurf::Internal::Type::HashOf[Growsurf::Internal::Type::Unknown]]) | nil,
        created_at: Integer | nil,
        fingerprint: String | nil,
        first_name: String | nil,
        fraud_reason_code: String | nil,
        fraud_risk_level: Growsurf::Campaign::FraudRiskLevel | nil,
        impression_count: Integer | nil,
        invite_count: Integer | nil,
        ip_address: String | nil,
        is_new: Growsurf::Internal::Type::Boolean | nil,
        is_winner: Growsurf::Internal::Type::Boolean | nil,
        last_name: String | nil,
        metadata: ^(Growsurf::Internal::Type::HashOf[Growsurf::Internal::Type::Unknown]) | nil,
        monthly_referrals: ^(Growsurf::Internal::Type::ArrayOf[String]) | nil,
        notes: String | nil,
        paypal_email_address: String | nil,
        prev_monthly_rank: Integer | nil,
        prev_monthly_referral_count: Integer | nil,
        referrals: ^(Growsurf::Internal::Type::ArrayOf[String]) | nil,
        referral_source: Growsurf::Campaign::ReferralSource | nil,
        referral_status: Growsurf::Campaign::ReferralStatus | nil,
        referred_by: String | nil,
        referrer: Growsurf::Campaign::CampaignParticipant::Referrer | nil,
        share_count: ^(Growsurf::Internal::Type::HashOf[Integer]) | nil,
        unique_impression_count: Integer | nil,
        unread_commissions_count: Integer | nil,
        unread_payouts_count: Integer | nil,
        unsubscribed: Growsurf::Internal::Type::Boolean | nil,
        vanity_keys: ^(Growsurf::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.delete("participantIdOrEmail", id: "id")

    assert_pattern do
      response => Growsurf::Models::Campaign::ParticipantDeleteResponse
    end

    assert_pattern do
      response => {
        success: Growsurf::Internal::Type::Boolean
      }
    end
  end

  def test_add_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.add("id", email: "gavin@hooli.com")

    assert_pattern do
      response => Growsurf::Campaign::CampaignParticipant
    end

    assert_pattern do
      response => {
        id: String,
        email: String,
        monthly_rank: Integer,
        monthly_referral_count: Integer,
        rank: Integer,
        referral_count: Integer,
        rewards: ^(Growsurf::Internal::Type::ArrayOf[Growsurf::Campaign::ParticipantReward]),
        share_url: String,
        all_matching_fraudsters: ^(Growsurf::Internal::Type::ArrayOf[Growsurf::Internal::Type::HashOf[Growsurf::Internal::Type::Unknown]]) | nil,
        created_at: Integer | nil,
        fingerprint: String | nil,
        first_name: String | nil,
        fraud_reason_code: String | nil,
        fraud_risk_level: Growsurf::Campaign::FraudRiskLevel | nil,
        impression_count: Integer | nil,
        invite_count: Integer | nil,
        ip_address: String | nil,
        is_new: Growsurf::Internal::Type::Boolean | nil,
        is_winner: Growsurf::Internal::Type::Boolean | nil,
        last_name: String | nil,
        metadata: ^(Growsurf::Internal::Type::HashOf[Growsurf::Internal::Type::Unknown]) | nil,
        monthly_referrals: ^(Growsurf::Internal::Type::ArrayOf[String]) | nil,
        notes: String | nil,
        paypal_email_address: String | nil,
        prev_monthly_rank: Integer | nil,
        prev_monthly_referral_count: Integer | nil,
        referrals: ^(Growsurf::Internal::Type::ArrayOf[String]) | nil,
        referral_source: Growsurf::Campaign::ReferralSource | nil,
        referral_status: Growsurf::Campaign::ReferralStatus | nil,
        referred_by: String | nil,
        referrer: Growsurf::Campaign::CampaignParticipant::Referrer | nil,
        share_count: ^(Growsurf::Internal::Type::HashOf[Integer]) | nil,
        unique_impression_count: Integer | nil,
        unread_commissions_count: Integer | nil,
        unread_payouts_count: Integer | nil,
        unsubscribed: Growsurf::Internal::Type::Boolean | nil,
        vanity_keys: ^(Growsurf::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_list_commissions_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.list_commissions("participantIdOrEmail", id: "id")

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

  def test_list_payouts_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.list_payouts("participantIdOrEmail", id: "id")

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

  def test_list_referrals_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.list_referrals("participantIdOrEmail", id: "id")

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

  def test_list_rewards_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.list_rewards("participantIdOrEmail", id: "id")

    assert_pattern do
      response => Growsurf::Models::Campaign::ParticipantListRewardsResponse
    end

    assert_pattern do
      response => {
        limit: Integer,
        next_id: String | nil,
        rewards: ^(Growsurf::Internal::Type::ArrayOf[Growsurf::Campaign::ParticipantReward])
      }
    end
  end

  def test_record_transaction_required_params
    skip("Mock server tests are disabled")

    response =
      @growsurf.campaign.participant.record_transaction(
        "participantIdOrEmail",
        id: "id",
        currency: "USD",
        gross_amount: 9900
      )

    assert_pattern do
      response => Growsurf::Models::Campaign::ParticipantRecordTransactionResponse
    end

    assert_pattern do
      case response
      in Growsurf::Models::Campaign::ParticipantRecordTransactionResponse::UnionMember0
      in Growsurf::Models::Campaign::ParticipantRecordTransactionResponse::UnionMember1
      end
    end
  end

  def test_send_invites_required_params
    skip("Mock server tests are disabled")

    response =
      @growsurf.campaign.participant.send_invites(
        "participantIdOrEmail",
        id: "id",
        email_addresses: ["erlich@aviato.com"],
        message_text: "{{referrerFirstName}} invited you with {{referrerShareUrl}}.",
        subject_text: "Join me on Pied Piper"
      )

    assert_pattern do
      response => Growsurf::Models::Campaign::ParticipantSendInvitesResponse
    end

    assert_pattern do
      response => {
        invites_sent: Integer,
        message_type: String,
        success: Growsurf::Internal::Type::Boolean
      }
    end
  end

  def test_trigger_referral_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.trigger_referral("participantIdOrEmail", id: "id")

    assert_pattern do
      response => Growsurf::Models::Campaign::ParticipantTriggerReferralResponse
    end

    assert_pattern do
      response => {
        success: Growsurf::Internal::Type::Boolean,
        message: String | nil
      }
    end
  end
end
