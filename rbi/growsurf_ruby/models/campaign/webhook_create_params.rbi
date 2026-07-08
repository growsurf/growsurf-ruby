# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class WebhookCreateParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::WebhookCreateParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # The URL that receives webhook deliveries.
        sig { returns(String) }
        attr_accessor :payload_url

        # The events this webhook is subscribed to. When omitted, it is subscribed to no
        # events.
        sig do
          returns(
            T.nilable(T::Array[GrowsurfRuby::Campaign::WebhookEvent::OrSymbol])
          )
        end
        attr_reader :events

        sig do
          params(
            events: T::Array[GrowsurfRuby::Campaign::WebhookEvent::OrSymbol]
          ).void
        end
        attr_writer :events

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_enabled

        sig { params(is_enabled: T::Boolean).void }
        attr_writer :is_enabled

        # Write-only. Used to sign deliveries (the `GrowSurf-Signature` HMAC header). Never
        # returned.
        sig { returns(T.nilable(String)) }
        attr_reader :secret

        sig { params(secret: String).void }
        attr_writer :secret

        sig do
          params(
            payload_url: String,
            events: T::Array[GrowsurfRuby::Campaign::WebhookEvent::OrSymbol],
            is_enabled: T::Boolean,
            secret: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The URL that receives webhook deliveries.
          payload_url:,
          # The events this webhook is subscribed to. When omitted, it is subscribed to no
          # events.
          events: nil,
          is_enabled: nil,
          # Write-only. Used to sign deliveries (the `GrowSurf-Signature` HMAC header). Never
          # returned.
          secret: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              payload_url: String,
              events: T::Array[GrowsurfRuby::Campaign::WebhookEvent::OrSymbol],
              is_enabled: T::Boolean,
              secret: String,
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
