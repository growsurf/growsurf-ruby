# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Webhooks#update
      class WebhookUpdateParams < GrowsurfRuby::Internal::Type::BaseModel
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

        # @!attribute events
        #
        #   @return [Array<Symbol, GrowsurfRuby::Models::Campaign::WebhookEvent>, nil]
        optional :events, -> { GrowsurfRuby::Internal::Type::ArrayOf[enum: GrowsurfRuby::Campaign::WebhookEvent] }

        # @!attribute is_enabled
        #
        #   @return [Boolean, nil]
        optional :is_enabled, GrowsurfRuby::Internal::Type::Boolean, api_name: :isEnabled

        # @!attribute payload_url
        #
        #   @return [String, nil]
        optional :payload_url, String, api_name: :payloadUrl

        # @!attribute secret
        #   Write-only.
        #
        #   @return [String, nil]
        optional :secret, String

        # @!method initialize(id:, webhook_id:, events: nil, is_enabled: nil, payload_url: nil, secret: nil, request_options: {})
        #   @param id [String]
        #
        #   @param webhook_id [String]
        #
        #   @param events [Array<Symbol, GrowsurfRuby::Models::Campaign::WebhookEvent>]
        #
        #   @param is_enabled [Boolean]
        #
        #   @param payload_url [String]
        #
        #   @param secret [String] Write-only.
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
