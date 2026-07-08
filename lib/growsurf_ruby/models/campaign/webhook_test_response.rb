# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Webhooks#test
      class WebhookTestResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute success
        #
        #   @return [Boolean]
        required :success, GrowsurfRuby::Internal::Type::Boolean

        # @!attribute payload
        #   The mock event payload that was sent.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :payload, GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]

        # @!attribute response
        #
        #   @return [GrowsurfRuby::Models::Campaign::WebhookTestResponse::Response, nil]
        optional :response, -> { GrowsurfRuby::Campaign::WebhookTestResponse::Response }

        # @!method initialize(success:, payload: nil, response: nil)
        #   @param success [Boolean]
        #
        #   @param payload [Hash{Symbol=>Object}] The mock event payload that was sent.
        #
        #   @param response [GrowsurfRuby::Models::Campaign::WebhookTestResponse::Response]

        # @see GrowsurfRuby::Models::Campaign::WebhookTestResponse#response
        class Response < GrowsurfRuby::Internal::Type::BaseModel
          # @!attribute msg
          #
          #   @return [String, nil]
          optional :msg, String

          # @!attribute status_code
          #
          #   @return [Integer, nil]
          optional :status_code, Integer, api_name: :statusCode

          # @!method initialize(msg: nil, status_code: nil)
          #   @param msg [String]
          #   @param status_code [Integer]
        end
      end
    end
  end
end
