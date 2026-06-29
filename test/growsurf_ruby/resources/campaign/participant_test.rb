# frozen_string_literal: true

require_relative "../../test_helper"

class GrowsurfRuby::Test::Resources::Campaign::ParticipantTest < GrowsurfRuby::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.retrieve("participantIdOrEmail", id: "id")

    assert_pattern do
      response => GrowsurfRuby::Campaign::CampaignParticipant
    end

    assert_pattern do
      response => {
        id: String,
        email: String,
        monthly_rank: Integer,
        monthly_referral_count: Integer,
        rank: Integer,
        referral_count: Integer,
        rewards: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::ParticipantReward]),
        share_url: String,
        all_matching_fraudsters: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]]) | nil,
        created_at: Integer | nil,
        fingerprint: String | nil,
        first_name: String | nil,
        fraud_reason_code: String | nil,
        fraud_risk_level: GrowsurfRuby::Campaign::FraudRiskLevel | nil,
        impression_count: Integer | nil,
        invite_count: Integer | nil,
        ip_address: String | nil,
        is_new: GrowsurfRuby::Internal::Type::Boolean | nil,
        is_winner: GrowsurfRuby::Internal::Type::Boolean | nil,
        last_name: String | nil,
        metadata: ^(GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]) | nil,
        mobile_instance_id: String | nil,
        monthly_referrals: ^(GrowsurfRuby::Internal::Type::ArrayOf[String]) | nil,
        notes: String | nil,
        paypal_email_address: String | nil,
        prev_monthly_rank: Integer | nil,
        prev_monthly_referral_count: Integer | nil,
        referrals: ^(GrowsurfRuby::Internal::Type::ArrayOf[String]) | nil,
        referral_source: GrowsurfRuby::Campaign::ReferralSource | nil,
        referral_status: GrowsurfRuby::Campaign::ReferralStatus | nil,
        referred_by: String | nil,
        referrer: GrowsurfRuby::Campaign::CampaignParticipant::Referrer | nil,
        share_count: ^(GrowsurfRuby::Internal::Type::HashOf[Integer]) | nil,
        unique_impression_count: Integer | nil,
        unread_commissions_count: Integer | nil,
        unread_payouts_count: Integer | nil,
        unsubscribed: GrowsurfRuby::Internal::Type::Boolean | nil,
        vanity_keys: ^(GrowsurfRuby::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.update("participantIdOrEmail", id: "id")

    assert_pattern do
      response => GrowsurfRuby::Campaign::CampaignParticipant
    end

    assert_pattern do
      response => {
        id: String,
        email: String,
        monthly_rank: Integer,
        monthly_referral_count: Integer,
        rank: Integer,
        referral_count: Integer,
        rewards: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::ParticipantReward]),
        share_url: String,
        all_matching_fraudsters: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]]) | nil,
        created_at: Integer | nil,
        fingerprint: String | nil,
        first_name: String | nil,
        fraud_reason_code: String | nil,
        fraud_risk_level: GrowsurfRuby::Campaign::FraudRiskLevel | nil,
        impression_count: Integer | nil,
        invite_count: Integer | nil,
        ip_address: String | nil,
        is_new: GrowsurfRuby::Internal::Type::Boolean | nil,
        is_winner: GrowsurfRuby::Internal::Type::Boolean | nil,
        last_name: String | nil,
        metadata: ^(GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]) | nil,
        mobile_instance_id: String | nil,
        monthly_referrals: ^(GrowsurfRuby::Internal::Type::ArrayOf[String]) | nil,
        notes: String | nil,
        paypal_email_address: String | nil,
        prev_monthly_rank: Integer | nil,
        prev_monthly_referral_count: Integer | nil,
        referrals: ^(GrowsurfRuby::Internal::Type::ArrayOf[String]) | nil,
        referral_source: GrowsurfRuby::Campaign::ReferralSource | nil,
        referral_status: GrowsurfRuby::Campaign::ReferralStatus | nil,
        referred_by: String | nil,
        referrer: GrowsurfRuby::Campaign::CampaignParticipant::Referrer | nil,
        share_count: ^(GrowsurfRuby::Internal::Type::HashOf[Integer]) | nil,
        unique_impression_count: Integer | nil,
        unread_commissions_count: Integer | nil,
        unread_payouts_count: Integer | nil,
        unsubscribed: GrowsurfRuby::Internal::Type::Boolean | nil,
        vanity_keys: ^(GrowsurfRuby::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.delete("participantIdOrEmail", id: "id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::ParticipantDeleteResponse
    end

    assert_pattern do
      response => {
        success: GrowsurfRuby::Internal::Type::Boolean
      }
    end
  end

  def test_add_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.add("id", email: "dev@stainless.com")

    assert_pattern do
      response => GrowsurfRuby::Campaign::CampaignParticipant
    end

    assert_pattern do
      response => {
        id: String,
        email: String,
        monthly_rank: Integer,
        monthly_referral_count: Integer,
        rank: Integer,
        referral_count: Integer,
        rewards: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::ParticipantReward]),
        share_url: String,
        all_matching_fraudsters: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]]) | nil,
        created_at: Integer | nil,
        fingerprint: String | nil,
        first_name: String | nil,
        fraud_reason_code: String | nil,
        fraud_risk_level: GrowsurfRuby::Campaign::FraudRiskLevel | nil,
        impression_count: Integer | nil,
        invite_count: Integer | nil,
        ip_address: String | nil,
        is_new: GrowsurfRuby::Internal::Type::Boolean | nil,
        is_winner: GrowsurfRuby::Internal::Type::Boolean | nil,
        last_name: String | nil,
        metadata: ^(GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]) | nil,
        mobile_instance_id: String | nil,
        monthly_referrals: ^(GrowsurfRuby::Internal::Type::ArrayOf[String]) | nil,
        notes: String | nil,
        paypal_email_address: String | nil,
        prev_monthly_rank: Integer | nil,
        prev_monthly_referral_count: Integer | nil,
        referrals: ^(GrowsurfRuby::Internal::Type::ArrayOf[String]) | nil,
        referral_source: GrowsurfRuby::Campaign::ReferralSource | nil,
        referral_status: GrowsurfRuby::Campaign::ReferralStatus | nil,
        referred_by: String | nil,
        referrer: GrowsurfRuby::Campaign::CampaignParticipant::Referrer | nil,
        share_count: ^(GrowsurfRuby::Internal::Type::HashOf[Integer]) | nil,
        unique_impression_count: Integer | nil,
        unread_commissions_count: Integer | nil,
        unread_payouts_count: Integer | nil,
        unsubscribed: GrowsurfRuby::Internal::Type::Boolean | nil,
        vanity_keys: ^(GrowsurfRuby::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_list_commissions_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.list_commissions("participantIdOrEmail", id: "id")

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

  def test_list_payouts_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.list_payouts("participantIdOrEmail", id: "id")

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

  def test_list_referrals_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.list_referrals("participantIdOrEmail", id: "id")

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

  def test_list_rewards_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.list_rewards("participantIdOrEmail", id: "id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::ParticipantListRewardsResponse
    end

    assert_pattern do
      response => {
        limit: Integer,
        next_id: String | nil,
        rewards: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::ParticipantReward])
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
      response => GrowsurfRuby::Models::Campaign::ParticipantRecordTransactionResponse
    end

    assert_pattern do
      case response
      in GrowsurfRuby::Models::Campaign::ParticipantRecordTransactionResponse::UnionMember0
      in GrowsurfRuby::Models::Campaign::ParticipantRecordTransactionResponse::UnionMember1
      end
    end
  end

  def test_refund_transaction_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.refund_transaction("participantIdOrEmail", id: "id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse
    end

    assert_pattern do
      response => {
        adjusted: Integer,
        amendment_type: GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse::AmendmentType,
        deleted: Integer,
        matched: Integer,
        matching_commission_ids: ^(GrowsurfRuby::Internal::Type::ArrayOf[String]),
        message: String,
        reversed: Integer,
        success: GrowsurfRuby::Internal::Type::Boolean,
        not_found: GrowsurfRuby::Internal::Type::Boolean | nil
      }
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
      response => GrowsurfRuby::Models::Campaign::ParticipantSendInvitesResponse
    end

    assert_pattern do
      response => {
        invites_sent: Integer,
        message_type: String,
        success: GrowsurfRuby::Internal::Type::Boolean
      }
    end
  end

  def test_trigger_referral_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.trigger_referral("participantIdOrEmail", id: "id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::ParticipantTriggerReferralResponse
    end

    assert_pattern do
      response => {
        success: GrowsurfRuby::Internal::Type::Boolean,
        message: String | nil
      }
    end
  end

  def test_cancel_delayed_referral_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.participant.cancel_delayed_referral("participantIdOrEmail", id: "id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::ParticipantCancelDelayedReferralResponse
    end

    assert_pattern do
      response => {
        success: GrowsurfRuby::Internal::Type::Boolean,
        message: String | nil
      }
    end
  end
end
