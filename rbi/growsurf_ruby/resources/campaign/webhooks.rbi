# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      class Webhooks
        # Lists a program's webhooks (secrets are never returned).
        sig do
          params(
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::WebhookListResponse)
        end
        def list(
          # GrowSurf program ID.
          id,
          request_options: {}
        )
        end

        # Adds a webhook to the program.
        sig do
          params(
            id: String,
            payload_url: String,
            events: T::Array[GrowsurfRuby::Campaign::WebhookEvent::OrSymbol],
            is_enabled: T::Boolean,
            secret: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::Webhook)
        end
        def create(
          # Path param: GrowSurf program ID.
          id,
          # Body param: The URL that receives webhook deliveries.
          payload_url:,
          # Body param: The events this webhook is subscribed to. When omitted, it is
          # subscribed to no events.
          events: nil,
          # Body param
          is_enabled: nil,
          # Body param: Write-only. Used to sign deliveries (the `GrowSurf-Signature` HMAC
          # header). Never returned.
          secret: nil,
          request_options: {}
        )
        end

        # Updates a webhook by id.
        sig do
          params(
            webhook_id: String,
            id: String,
            events: T::Array[GrowsurfRuby::Campaign::WebhookEvent::OrSymbol],
            is_enabled: T::Boolean,
            payload_url: String,
            secret: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::Webhook)
        end
        def update(
          # Path param: The webhook id (`primary` for the program's primary webhook).
          webhook_id,
          # Path param: GrowSurf program ID.
          id:,
          # Body param
          events: nil,
          # Body param
          is_enabled: nil,
          # Body param
          payload_url: nil,
          # Body param: Write-only.
          secret: nil,
          request_options: {}
        )
        end

        # Removes a webhook by id.
        sig do
          params(
            webhook_id: String,
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::WebhookDeleteResponse)
        end
        def delete(
          # The webhook id (`primary` for the program's primary webhook).
          webhook_id,
          # GrowSurf program ID.
          id:,
          request_options: {}
        )
        end

        # Sends a live test event to a webhook using its stored URL and secret.
        sig do
          params(
            webhook_id: String,
            id: String,
            event: GrowsurfRuby::Campaign::WebhookEvent::OrSymbol,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::WebhookTestResponse)
        end
        def test(
          # Path param: The webhook id (`primary` for the program's primary webhook).
          webhook_id,
          # Path param: GrowSurf program ID.
          id:,
          # Body param: The event to simulate. When omitted, the webhook's first enabled
          # event is used (returns `400` if it has no enabled events).
          event: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: GrowsurfRuby::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
