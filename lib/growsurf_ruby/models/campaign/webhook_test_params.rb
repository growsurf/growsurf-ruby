# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Webhooks#test
      class WebhookTestParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute webhook_id
        #
        #   @return [String]
        required :webhook_id, String

        # @!attribute event
        #   The event to simulate. When omitted, the webhook's first enabled event is used
        #   (returns `400` if it has no enabled events).
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::WebhookEvent, nil]
        optional :event, enum: -> { GrowsurfRuby::Campaign::WebhookEvent }

        # @!method initialize(id:, webhook_id:, event: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::Campaign::WebhookTestParams} for more details.
        #
        #   @param id [String]
        #
        #   @param webhook_id [String]
        #
        #   @param event [Symbol, GrowsurfRuby::Models::Campaign::WebhookEvent] The event to simulate. When omitted, the webhook's first enabled event is used (
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
