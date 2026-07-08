# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      class Webhooks
        # Lists a program's webhooks (secrets are never returned).
        #
        # @overload list(id, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::WebhookListResponse]
        def list(id, params = {})
          @client.request(
            method: :get,
            path: ["campaign/%1$s/webhooks", id],
            model: GrowsurfRuby::Models::Campaign::WebhookListResponse,
            options: params[:request_options]
          )
        end

        # Adds a webhook to the program.
        #
        # @overload create(id, payload_url:, events: nil, is_enabled: nil, secret: nil, request_options: {})
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param payload_url [String] Body param: The URL that receives webhook deliveries.
        #
        # @param events [Array<Symbol, GrowsurfRuby::Models::Campaign::WebhookEvent>] Body param: The events this webhook is subscribed to. When omitted, it is subscri
        #
        # @param is_enabled [Boolean] Body param
        #
        # @param secret [String] Body param: Write-only. Used to sign deliveries (the `GrowSurf-Signature` HMAC hea
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::Webhook]
        #
        # @see GrowsurfRuby::Models::Campaign::WebhookCreateParams
        def create(id, params)
          parsed, options = GrowsurfRuby::Campaign::WebhookCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["campaign/%1$s/webhooks", id],
            body: parsed,
            model: GrowsurfRuby::Models::Campaign::Webhook,
            options: options
          )
        end

        # Updates a webhook by id.
        #
        # @overload update(webhook_id, id:, events: nil, is_enabled: nil, payload_url: nil, secret: nil, request_options: {})
        #
        # @param webhook_id [String] Path param: The webhook id (`primary` for the program's primary webhook).
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param events [Array<Symbol, GrowsurfRuby::Models::Campaign::WebhookEvent>] Body param
        #
        # @param is_enabled [Boolean] Body param
        #
        # @param payload_url [String] Body param
        #
        # @param secret [String] Body param: Write-only.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::Webhook]
        #
        # @see GrowsurfRuby::Models::Campaign::WebhookUpdateParams
        def update(webhook_id, params)
          parsed, options = GrowsurfRuby::Campaign::WebhookUpdateParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["campaign/%1$s/webhooks/%2$s", id, webhook_id],
            body: parsed,
            model: GrowsurfRuby::Models::Campaign::Webhook,
            options: options
          )
        end

        # Removes a webhook by id.
        #
        # @overload delete(webhook_id, id:, request_options: {})
        #
        # @param webhook_id [String] The webhook id (`primary` for the program's primary webhook).
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::WebhookDeleteResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::WebhookDeleteParams
        def delete(webhook_id, params)
          parsed, options = GrowsurfRuby::Campaign::WebhookDeleteParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["campaign/%1$s/webhooks/%2$s", id, webhook_id],
            model: GrowsurfRuby::Models::Campaign::WebhookDeleteResponse,
            options: options
          )
        end

        # Sends a live test event to a webhook using its stored URL and secret.
        #
        # @overload test(webhook_id, id:, event: nil, request_options: {})
        #
        # @param webhook_id [String] Path param: The webhook id (`primary` for the program's primary webhook).
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param event [Symbol, GrowsurfRuby::Models::Campaign::WebhookEvent] Body param: The event to simulate. When omitted, the webhook's first enabled even
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::WebhookTestResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::WebhookTestParams
        def test(webhook_id, params)
          parsed, options = GrowsurfRuby::Campaign::WebhookTestParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["campaign/%1$s/webhooks/%2$s/test", id, webhook_id],
            body: parsed,
            model: GrowsurfRuby::Models::Campaign::WebhookTestResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [GrowsurfRuby::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
