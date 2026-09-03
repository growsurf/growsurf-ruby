# frozen_string_literal: true

require_relative "../test_helper"

class GrowsurfRuby::Test::PayoutProviderForwardCompatibilityTest < Minitest::Test
  def test_unknown_future_provider_is_preserved
    model = GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse.new(
      active_provider: "TESTBANK",
      enabled_providers: ["TESTBANK"],
      destinations: [
        {
          provider: "TESTBANK",
          provider_display_name: "Test Bank",
          status: "ACTIVE",
          claim_email: "richard@piedpiper.com",
          legal_entity_type: :INDIVIDUAL,
          confirmed_at: 1_752_000_000_000,
          needs_repair_reason: nil
        }
      ]
    )

    assert_equal("TESTBANK", model.active_provider)
    assert_equal(["TESTBANK"], model.enabled_providers)
    assert_equal("TESTBANK", model.destinations.first.provider)

    confirmation = GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationResponse.new(
      provider: "TESTBANK",
      provider_display_name: "Test Bank",
      status: :CONFIRMATION_REQUESTED,
      expires_at: 1_752_604_800_000
    )
    assert_equal("TESTBANK", confirmation.provider)
  end

  def test_response_models_do_not_expose_stale_fields_or_provider_enums
    model = GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse.new(
      active_provider: nil,
      enabled_providers: [],
      destinations: []
    )

    refute_respond_to(model, :participant_id)
    refute(
      GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse.const_defined?(
        :ActiveProvider,
        false
      )
    )
    refute(
      GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse.const_defined?(
        :EnabledProvider,
        false
      )
    )
    refute(
      GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination.const_defined?(
        :Provider,
        false
      )
    )
    refute(
      GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationResponse.const_defined?(
        :Provider, false
      )
    )
  end
end
