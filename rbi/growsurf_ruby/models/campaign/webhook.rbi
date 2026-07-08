# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class Webhook < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::Webhook,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # Read-only. Whether GrowSurf auto-disabled this webhook after repeated delivery
        # failures.
        sig { returns(T::Boolean) }
        attr_accessor :auto_disabled_due_to_failures

        sig do
          returns(T::Array[GrowsurfRuby::Campaign::WebhookEvent::TaggedSymbol])
        end
        attr_accessor :events

        # Read-only. Consecutive delivery failures.
        sig { returns(Integer) }
        attr_accessor :failure_count

        # The webhook id (`primary` for the program's primary webhook).
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :is_enabled

        # Read-only. When the last delivery failure occurred, as a Unix timestamp in
        # milliseconds.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :last_failure_at

        # The URL that receives webhook deliveries.
        sig { returns(T.nilable(String)) }
        attr_accessor :payload_url

        sig do
          params(
            auto_disabled_due_to_failures: T::Boolean,
            events: T::Array[GrowsurfRuby::Campaign::WebhookEvent::OrSymbol],
            failure_count: Integer,
            id: String,
            is_enabled: T::Boolean,
            last_failure_at: T.nilable(Integer),
            payload_url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Read-only. Whether GrowSurf auto-disabled this webhook after repeated delivery
          # failures.
          auto_disabled_due_to_failures:,
          events:,
          # Read-only. Consecutive delivery failures.
          failure_count:,
          # The webhook id (`primary` for the program's primary webhook).
          id:,
          is_enabled:,
          # Read-only. When the last delivery failure occurred, as a Unix timestamp in
          # milliseconds.
          last_failure_at: nil,
          # The URL that receives webhook deliveries.
          payload_url: nil
        )
        end

        sig do
          override.returns(
            {
              auto_disabled_due_to_failures: T::Boolean,
              events:
                T::Array[GrowsurfRuby::Campaign::WebhookEvent::TaggedSymbol],
              failure_count: Integer,
              id: String,
              is_enabled: T::Boolean,
              last_failure_at: T.nilable(Integer),
              payload_url: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
