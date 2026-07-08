# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class WebhookUpdateParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::WebhookUpdateParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :webhook_id

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

        sig { returns(T.nilable(String)) }
        attr_reader :payload_url

        sig { params(payload_url: String).void }
        attr_writer :payload_url

        # Write-only.
        sig { returns(T.nilable(String)) }
        attr_reader :secret

        sig { params(secret: String).void }
        attr_writer :secret

        sig do
          params(
            id: String,
            webhook_id: String,
            events: T::Array[GrowsurfRuby::Campaign::WebhookEvent::OrSymbol],
            is_enabled: T::Boolean,
            payload_url: String,
            secret: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          webhook_id:,
          events: nil,
          is_enabled: nil,
          payload_url: nil,
          # Write-only.
          secret: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              webhook_id: String,
              events: T::Array[GrowsurfRuby::Campaign::WebhookEvent::OrSymbol],
              is_enabled: T::Boolean,
              payload_url: String,
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
