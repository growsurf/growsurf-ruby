# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Webhooks#create
      class Webhook < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute auto_disabled_due_to_failures
        #   Read-only. Whether GrowSurf auto-disabled this webhook after repeated delivery
        #   failures.
        #
        #   @return [Boolean]
        required :auto_disabled_due_to_failures,
                 GrowsurfRuby::Internal::Type::Boolean,
                 api_name: :autoDisabledDueToFailures

        # @!attribute events
        #
        #   @return [Array<Symbol, GrowsurfRuby::Models::Campaign::WebhookEvent>]
        required :events, -> { GrowsurfRuby::Internal::Type::ArrayOf[enum: GrowsurfRuby::Campaign::WebhookEvent] }

        # @!attribute failure_count
        #   Read-only. Consecutive delivery failures.
        #
        #   @return [Integer]
        required :failure_count, Integer, api_name: :failureCount

        # @!attribute id
        #   The webhook id (`primary` for the program's primary webhook).
        #
        #   @return [String]
        required :id, String

        # @!attribute is_enabled
        #
        #   @return [Boolean]
        required :is_enabled, GrowsurfRuby::Internal::Type::Boolean, api_name: :isEnabled

        # @!attribute last_failure_at
        #   Read-only. When the last delivery failure occurred, as a Unix timestamp in
        #   milliseconds.
        #
        #   @return [Integer, nil]
        optional :last_failure_at, Integer, api_name: :lastFailureAt, nil?: true

        # @!attribute payload_url
        #   The URL that receives webhook deliveries.
        #
        #   @return [String, nil]
        optional :payload_url, String, api_name: :payloadUrl, nil?: true

        # @!method initialize(auto_disabled_due_to_failures:, events:, failure_count:, id:, is_enabled:, last_failure_at: nil, payload_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::Campaign::Webhook} for more details.
        #
        #   @param auto_disabled_due_to_failures [Boolean] Read-only. Whether GrowSurf auto-disabled this webhook after repeated delivery fai
        #
        #   @param events [Array<Symbol, GrowsurfRuby::Models::Campaign::WebhookEvent>]
        #
        #   @param failure_count [Integer] Read-only. Consecutive delivery failures.
        #
        #   @param id [String] The webhook id (`primary` for the program's primary webhook).
        #
        #   @param is_enabled [Boolean]
        #
        #   @param last_failure_at [Integer, nil] Read-only. When the last delivery failure occurred, as a Unix timestamp in millise
        #
        #   @param payload_url [String, nil] The URL that receives webhook deliveries.
      end
    end
  end
end
