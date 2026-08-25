# frozen_string_literal: true

require_relative "../test_helper"

class GrowsurfRuby::Test::LeadRewardEventsTest < Minitest::Test
  def test_campaign_reward_models_expose_event
    reward = GrowsurfRuby::Models::Campaign::Reward.new(
      id: "reward_1",
      is_unlimited: true,
      metadata: {},
      type: :SINGLE_SIDED,
      event: :LEAD
    )
    embedded_reward = GrowsurfRuby::CampaignAPI::Reward.new(
      id: "reward_1",
      is_unlimited: true,
      metadata: {},
      type: :SINGLE_SIDED,
      event: :CONVERSION
    )

    assert_equal(:LEAD, reward.event)
    assert_equal(:CONVERSION, embedded_reward.event)
  end

  def test_reward_params_and_commission_expose_event
    create_params = GrowsurfRuby::Models::Campaign::RewardCreateParams.new(type: :MILESTONE, event: :LEAD)
    update_params = GrowsurfRuby::Models::Campaign::RewardUpdateParams.new(
      id: "campaign_1",
      campaign_reward_id: "reward_1",
      event: :CONVERSION
    )
    commission = GrowsurfRuby::Models::ParticipantCommissionList::Commission.new(
      id: "commission_1",
      amount: 500,
      created_at: 1,
      currency_iso: "USD",
      event: :LEAD,
      referred_id: "referred_1",
      referrer_id: "referrer_1",
      sale_amount: nil,
      status: :PENDING
    )

    assert_equal(:LEAD, create_params.event)
    assert_equal(:CONVERSION, update_params.event)
    assert_equal(:LEAD, commission.event)
    assert_equal(:LEAD, create_params.to_hash[:event])
    assert_equal(:CONVERSION, update_params.to_hash[:event])
    assert_equal(:LEAD, commission.to_hash[:event])
    assert_equal(
      {type: :MILESTONE, event: :LEAD},
      GrowsurfRuby::Models::Campaign::RewardCreateParams.dump_request(create_params).first
    )
  end

  def test_inline_campaign_create_reuses_reward_event_contract
    params = GrowsurfRuby::Models::CampaignCreateParams.new(
      type: :REFERRAL,
      rewards: [{type: :SINGLE_SIDED, event: :LEAD}]
    )

    assert_equal(:LEAD, params.rewards.first.event)
    assert_equal(:LEAD, params.to_hash[:rewards].first.to_hash[:event])
    assert_equal(
      :LEAD,
      GrowsurfRuby::Models::CampaignCreateParams.dump_request(params).first.dig(:rewards, 0, :event)
    )
  end

  def test_participant_reward_coerces_cancelled_status
    reward = GrowsurfRuby::Models::Campaign::ParticipantReward.new(
      id: "participant_reward_1",
      reward_id: "reward_1",
      status: "CANCELLED"
    )

    assert_equal(:CANCELLED, reward.status)
    assert_includes(GrowsurfRuby::Models::Campaign::ParticipantReward::Status.values, :CANCELLED)
  end

  def test_commission_structure_coerces_supported_events
    click_structure = GrowsurfRuby::Models::CommissionStructure.new(event: "CLICK")
    lead_structure = GrowsurfRuby::Models::CommissionStructure.new(event: "LEAD")
    sale_structure = GrowsurfRuby::Models::CommissionStructure.new(event: "SALE")

    assert_equal(:CLICK, click_structure.event)
    assert_equal(:LEAD, lead_structure.event)
    assert_equal(:SALE, sale_structure.event)
    assert_equal(
      [:CLICK, :LEAD, :SALE],
      GrowsurfRuby::Models::CommissionStructure::Event.values.sort
    )
  end
end
