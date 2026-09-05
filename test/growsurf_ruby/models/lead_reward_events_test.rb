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
      status: "CANCELLED",
      amount: 25.5,
      currency_iso: "USD"
    )

    assert_equal(:CANCELLED, reward.status)
    assert_equal(25.5, reward.amount)
    assert_equal("USD", reward.currency_iso)
    assert_includes(GrowsurfRuby::Models::Campaign::ParticipantReward::Status.values, :CANCELLED)
  end

  def test_reward_tax_valuations_accept_explicit_nulls
    create_params = GrowsurfRuby::Models::Campaign::RewardCreateParams.new(
      type: :SINGLE_SIDED,
      referred_value: nil,
      value: nil
    )
    update_params = GrowsurfRuby::Models::Campaign::RewardUpdateParams.new(
      id: "campaign_1",
      campaign_reward_id: "reward_1",
      referred_value: nil,
      value: nil
    )

    [create_params, update_params].each do |params|
      assert(params.class.fields.fetch(:referred_value).fetch(:nilable))
      assert(params.class.fields.fetch(:value).fetch(:nilable))
      assert_nil(params.to_hash[:referred_value])
      assert_nil(params.to_hash[:value])
    end

    %w[create update].each do |operation|
      rbi = File.read(
        File.expand_path("../../../rbi/growsurf_ruby/models/campaign/reward_#{operation}_params.rbi", __dir__)
      )
      rbs = File.read(
        File.expand_path("../../../sig/growsurf_ruby/models/campaign/reward_#{operation}_params.rbs", __dir__)
      )

      assert_match(
        /^\s*referred_value:\s+T\.nilable\(GrowsurfRuby::RewardTaxValuation::OrHash\)/,
        rbi
      )
      assert_match(/^\s*value:\s+T\.nilable\(GrowsurfRuby::RewardTaxValuation::OrHash\)/, rbi)
      assert_match(/^\s*\?referred_value: GrowsurfRuby::RewardTaxValuation\?/m, rbs)
      assert_match(/^\s*\?value: GrowsurfRuby::RewardTaxValuation\?/m, rbs)
    end
  end

  def test_reward_text_fields_accept_explicit_nulls
    nullable_fields = [
      :coupon_code,
      :image_url,
      :next_milestone_prefix,
      :next_milestone_suffix,
      :referral_coupon_code,
      :referral_description
    ]
    create_params = GrowsurfRuby::Models::Campaign::RewardCreateParams.new(
      type: :SINGLE_SIDED,
      **nullable_fields.to_h { [_1, nil] }
    )
    update_params = GrowsurfRuby::Models::Campaign::RewardUpdateParams.new(
      id: "campaign_1",
      campaign_reward_id: "reward_1",
      **nullable_fields.to_h { [_1, nil] }
    )

    [create_params, update_params].each do |params|
      nullable_fields.each do |field|
        assert(params.class.fields.fetch(field).fetch(:nilable))
        assert_nil(params.to_hash[field])
      end
    end
  end

  def test_campaign_accepts_every_runtime_status_and_nullable_currency
    assert_includes(GrowsurfRuby::CampaignAPI::Status.values, :PENDING)
    assert_includes(GrowsurfRuby::CampaignAPI::Status.values, :CANCELLED)

    [:PENDING, :CANCELLED].each do |status|
      campaign = GrowsurfRuby::CampaignAPI.new(
        id: "campaign_1",
        impression_count: 0,
        invite_count: 0,
        name: "Pied Piper Referral Program",
        participant_count: 0,
        referral_count: 0,
        rewards: [],
        status: status,
        type: :REFERRAL,
        winner_count: 0,
        currency_iso: nil
      )

      assert_equal(status, campaign.status)
      assert_nil(campaign.currency_iso)
    end
  end

  def test_commission_and_payout_timestamps_accept_explicit_nulls
    commission = GrowsurfRuby::Models::ParticipantCommissionList::Commission.new(
      id: "commission_1",
      amount: nil,
      created_at: 1,
      currency_iso: "USD",
      event: :SALE,
      referred_id: "referred_1",
      referrer_id: "referrer_1",
      sale_amount: nil,
      status: :PENDING,
      approved_at: nil,
      paid_at: nil,
      reversed_at: nil,
      payout_queued_at: nil,
      exchange_rate_at: nil
    )
    payout = GrowsurfRuby::Models::ParticipantPayoutList::Payout.new(
      id: "payout_1",
      amount: 500,
      commission_ids: ["commission_1"],
      created_at: 1,
      currency_iso: "USD",
      participant_id: "participant_1",
      status: :UPCOMING,
      queued_at: nil,
      issued_at: nil,
      failed_at: nil,
      reversed_at: nil,
      exchange_rate_at: nil
    )

    [:approved_at, :paid_at, :reversed_at, :payout_queued_at, :exchange_rate_at].each do |field|
      assert_nil(commission.to_hash[field])
    end
    [:queued_at, :issued_at, :failed_at, :reversed_at, :exchange_rate_at].each do |field|
      assert_nil(payout.to_hash[field])
    end
  end

  def test_participant_reward_nullable_fields_match_the_public_contract
    nullable_fields = [:approved_at, :fulfilled_at, :amount, :currency_iso]
    fields = GrowsurfRuby::Models::Campaign::ParticipantReward.fields

    nullable_fields.each { assert(fields.fetch(_1).fetch(:nilable)) }

    reward = GrowsurfRuby::Models::Campaign::ParticipantReward.new(
      id: "participant_reward_1",
      reward_id: "reward_1",
      status: :PENDING,
      approved_at: nil,
      fulfilled_at: nil,
      amount: nil,
      currency_iso: nil
    )
    nullable_fields.each { assert_nil(reward.to_hash[_1]) }

    rbi = File.read(File.expand_path("../../../rbi/growsurf_ruby/models/campaign/participant_reward.rbi", __dir__))
    rbs = File.read(File.expand_path("../../../sig/growsurf_ruby/models/campaign/participant_reward.rbs", __dir__))

    {
      approved_at: "Integer",
      fulfilled_at: "Integer",
      amount: "Float",
      currency_iso: "String"
    }.each do |field, type|
      assert_match(/^\s*#{field}: T\.nilable\(#{type}\)/, rbi)
      assert_match(/^\s*\?#{field}: #{type}\?/m, rbs)
    end
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
