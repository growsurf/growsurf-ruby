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
        #   The events this webhook is subscribed to. When omitted, it is subscribed to no
        #   events.
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
        #   @param events [Array<Symbol, GrowsurfRuby::Models::Campaign::WebhookEvent>] The events this webhook is subscribed to. When omitted, it is subscribed to no e
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
