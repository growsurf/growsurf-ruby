# frozen_string_literal: true

require_relative "../test_helper"

class GrowsurfRuby::Test::Resources::ParticipantActivationEngagementAnalyticsTest < Minitest::Test
  extend Minitest::Serial
  include WebMock::API

  def setup
    super
    WebMock.enable!
    @base_url = "http://localhost"
    @growsurf = GrowsurfRuby::Client.new(base_url: @base_url, api_key: "My API Key")
  end

  def teardown
    WebMock.reset!
    WebMock.disable!
    super
  end

  def test_models_preserve_covered_and_unavailable_values
    engagement = parse_model(GrowsurfRuby::Models::CampaignEngagementAnalytics, engagement_payload)
    activation = parse_model(GrowsurfRuby::Models::CampaignActivationAnalyticsResponse, activation_payload)
    participant = parse_model(
      GrowsurfRuby::Models::Campaign::ParticipantActivationAnalytics,
      {
        coverage_start_at: 1_754_006_400_000,
        metric_contract_version: 1,
        program_type: :AFFILIATE,
        state: :AVAILABLE,
        reason: nil,
        cohort: {anchor_field: :approvedAsAffiliateAt, anchor_at: 1_754_006_400_000},
        enrolled_as_advocate_at: nil,
        milestones: {
          first_portal_viewed_at: 1_754_092_800_000,
          first_referral_link_copied_at: 1_754_096_400_000,
          first_share_at: 1_754_100_000_000,
          first_share_channel: :linkedin,
          first_unique_click_at: 1_754_186_400_000,
          first_lead_at: 1_754_272_800_000,
          first_referral_at: 1_754_359_200_000,
          first_reward_at: nil,
          first_commission_at: 1_754_445_600_000,
          payout_setup_completed_at: nil
        }
      }
    )

    assert_nil(engagement.coverage_start_at)
    assert_equal(:UNAVAILABLE, engagement.state)
    assert_nil(engagement.totals.portal_views.value)
    assert_nil(activation.aggregate.strict_stages)
    assert_equal(:linkedin, participant.milestones.first_share_channel)
    assert_equal(
      [
        :first_commission_at,
        :first_lead_at,
        :first_portal_viewed_at,
        :first_referral_at,
        :first_referral_link_copied_at,
        :first_reward_at,
        :first_share_at,
        :first_share_channel,
        :first_unique_click_at,
        :payout_setup_completed_at
      ],
      GrowsurfRuby::Models::Campaign::ParticipantActivationAnalytics::Milestones.fields.keys.sort
    )
  end

  def test_stalled_segments_expose_only_valid_transition_stages
    assert_equal(
      [:ELIGIBLE, :LEAD, :PORTAL_VIEWED, :SHARE_ACTION, :UNIQUE_REFERRAL_VISIT],
      GrowsurfRuby::Models::CampaignActivationAnalyticsResponse::StalledSegmentFromStage.values.sort
    )
    assert_equal(
      [:CREDITED_REFERRAL, :LEAD, :PORTAL_VIEWED, :SHARE_ACTION, :UNIQUE_REFERRAL_VISIT],
      GrowsurfRuby::Models::CampaignActivationAnalyticsResponse::StalledSegmentToStage.values.sort
    )
  end

  def test_requests_keep_existing_calls_and_add_exact_opt_in_contracts
    stub_request(:get, "#{@base_url}/campaign/campaign_123/analytics")
      .to_return_json(status: 200, body: {analytics: {}, startDate: 1, endDate: 2})
    stub_request(:get, "#{@base_url}/campaign/campaign_123/analytics")
      .with(query: {include: "engagement", platform: "WEB", timezone: "America/Los_Angeles"})
      .to_return_json(
        status: 200,
        body: {analytics: {}, startDate: 1, endDate: 2, engagement: engagement_wire_payload}
      )
    stub_request(:get, "#{@base_url}/campaign/campaign_123/analytics/activation")
      .with(
        query: {
          cohortFrom: "1754006400000",
          cohortTo: "1756684800000",
          cohortInterval: "week",
          observationWindowDays: "30",
          timezone: "America/Los_Angeles"
        }
      )
      .to_return_json(status: 200, body: activation_wire_payload)
    stub_request(:get, "#{@base_url}/campaign/campaign_123/participant/participant_123/analytics")
      .with(query: {include: "activation,series"})
      .to_return_json(status: 200, body: {analytics: {}, ranks: {}, shareCount: {}})

    @growsurf.campaign.retrieve_analytics("campaign_123")
    engagement = @growsurf.campaign.retrieve_analytics(
      "campaign_123",
      include: "engagement",
      platform: :WEB,
      timezone: "America/Los_Angeles"
    )
    activation = @growsurf.campaign.retrieve_activation_analytics(
      "campaign_123",
      cohort_from: 1_754_006_400_000,
      cohort_to: 1_756_684_800_000,
      cohort_interval: :week,
      observation_window_days: 30,
      timezone: "America/Los_Angeles"
    )
    @growsurf.campaign.participant.retrieve_analytics(
      "participant_123",
      id: "campaign_123",
      include: "activation,series"
    )

    assert_equal(:UNAVAILABLE, engagement.engagement.state)
    assert_equal(:UNAVAILABLE, activation.aggregate.state)
    assert_requested(:get, "#{@base_url}/campaign/campaign_123/analytics", query: {})
  end

  private

  def parse_model(model, payload)
    state = GrowsurfRuby::Internal::Type::Converter.new_coerce_state(translate_names: false)
    model.coerce(payload, state: state)
  end

  def unavailable_metric
    {state: :UNAVAILABLE, value: nil, reason: :COVERAGE_UNAVAILABLE}
  end

  def engagement_payload
    {
      coverage_start_at: nil,
      metric_contract_version: 1,
      program_type: :REFERRAL,
      timezone: "UTC",
      interval: :day,
      platform: {requested: :ALL, applied: :ALL, state: :UNAVAILABLE},
      period: {
        from: 1_754_006_400_000,
        to: 1_756_684_800_000,
        effective_from: nil,
        previous_from: 1_751_328_000_000,
        previous_to: 1_754_006_400_000
      },
      state: :UNAVAILABLE,
      reason: :COVERAGE_UNAVAILABLE,
      totals: {
        active_participants: unavailable_metric,
        sharing_participants: unavailable_metric,
        sharing_rate: unavailable_metric,
        repeat_active_participants: unavailable_metric,
        repeat_sharing_participants: unavailable_metric,
        retained_active_participants: unavailable_metric,
        portal_views: unavailable_metric,
        share_actions: unavailable_metric
      },
      previous_period: {state: :UNAVAILABLE, reason: :COVERAGE_UNAVAILABLE, totals: nil},
      comparison: {state: :UNAVAILABLE, reason: :COVERAGE_UNAVAILABLE, metrics: nil},
      series: [],
      breakdowns: {
        platforms: [],
        portal_view_sources: [],
        share_channels: [],
        first_share_channels: []
      }
    }
  end

  def activation_payload
    {
      coverage_start_at: nil,
      metric_contract_version: 1,
      program_type: :AFFILIATE,
      timezone: "UTC",
      cohort_interval: :week,
      observation_window_days: 30,
      portal_viewed_label: :"Affiliate portal viewed",
      portal_viewed_helper_text: "Signed-in participant view.",
      aggregate: {
        state: :UNAVAILABLE,
        reason: :COVERAGE_UNAVAILABLE,
        cohort: {
          from: 1_754_006_400_000,
          to: 1_756_684_800_000,
          effective_from: nil,
          matured_at: 1_759_276_800_000,
          as_of: 1_756_684_800_000,
          anchor_field: :approvedAsAffiliateAt
        },
        strict_stages: nil,
        raw_stage_counts: nil,
        stalled_segments: nil,
        outcomes: nil,
        largest_drop: nil
      },
      cohorts: []
    }
  end

  def engagement_wire_payload
    camelize_payload(engagement_payload)
  end

  def activation_wire_payload
    camelize_payload(activation_payload)
  end

  def camelize_payload(value)
    case value
    when Hash
      value.to_h do |key, item|
        wire_key = key.to_s.gsub(/_([a-z])/) { Regexp.last_match(1).upcase }
        [wire_key, camelize_payload(item)]
      end
    when Array
      value.map { camelize_payload(_1) }
    when Symbol
      value.to_s
    else
      value
    end
  end
end
