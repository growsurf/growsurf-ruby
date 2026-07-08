# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class WebhookTestParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::WebhookTestParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :webhook_id

        # The event to simulate. When omitted, the webhook's first enabled event is used
        # (returns `400` if it has no enabled events).
        sig do
          returns(T.nilable(GrowsurfRuby::Campaign::WebhookEvent::OrSymbol))
        end
        attr_reader :event

        sig do
          params(event: GrowsurfRuby::Campaign::WebhookEvent::OrSymbol).void
        end
        attr_writer :event

        sig do
          params(
            id: String,
            webhook_id: String,
            event: GrowsurfRuby::Campaign::WebhookEvent::OrSymbol,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          webhook_id:,
          # The event to simulate. When omitted, the webhook's first enabled event is used
          # (returns `400` if it has no enabled events).
          event: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              webhook_id: String,
              event: GrowsurfRuby::Campaign::WebhookEvent::OrSymbol,
              request_options: GrowsurfRuby::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
