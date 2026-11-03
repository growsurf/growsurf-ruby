# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Webhooks#create
      class WebhookCreateParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # @!attribute payload_url
        #   The URL that receives webhook deliveries.
        #
        #   @return [String]
        required :payload_url, String, api_name: :payloadUrl

        # @!attribute events
        #   The events this webhook is subscribed to. When omitted, the webhook is
        #   subscribed to every event its program type offers, like a webhook added in
        #   the dashboard: referral programs offer `PARTICIPANT_REACHED_A_GOAL`,
        #   `NEW_PARTICIPANT_ADDED`, `PARTICIPANT_FRAUD_STATUS_UPDATED`, and
        #   `CAMPAIGN_ENDED`; affiliate programs offer `NEW_COMMISSION_ADDED`,
        #   `COMMISSION_ADJUSTED`, `NEW_PAYOUT_ISSUED`, `NEW_PARTICIPANT_ADDED`,
        #   `PARTICIPANT_FRAUD_STATUS_UPDATED`, and `CAMPAIGN_ENDED`. Send `[]` to
        #   subscribe to no events. An event the program type does not offer returns
        #   `400`.
        #
        #   @return [Array<Symbol, GrowsurfRuby::Models::Campaign::WebhookEvent>, nil]
        optional :events, -> { GrowsurfRuby::Internal::Type::ArrayOf[enum: GrowsurfRuby::Campaign::WebhookEvent] }

        # @!attribute is_enabled
        #
        #   @return [Boolean, nil]
        optional :is_enabled, GrowsurfRuby::Internal::Type::Boolean, api_name: :isEnabled

        # @!attribute secret
        #   Write-only. Used to sign deliveries (the `GrowSurf-Signature` HMAC header). Never
        #   returned.
        #
        #   @return [String, nil]
        optional :secret, String

        # @!method initialize(payload_url:, events: nil, is_enabled: nil, secret: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::Campaign::WebhookCreateParams} for more details.
        #
        #   @param payload_url [String] The URL that receives webhook deliveries.
        #
        #   @param events [Array<Symbol, GrowsurfRuby::Models::Campaign::WebhookEvent>] The events this webhook is subscribed to. When omitted, the webhook is subscribed
        #
        #   @param is_enabled [Boolean]
        #
        #   @param secret [String] Write-only. Used to sign deliveries (the `GrowSurf-Signature` HMAC header). Never
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
