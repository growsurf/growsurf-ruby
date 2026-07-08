# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class WebhookListResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::WebhookListResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(T::Array[GrowsurfRuby::Models::Campaign::Webhook]) }
        attr_accessor :webhooks

        sig do
          params(
            webhooks: T::Array[GrowsurfRuby::Models::Campaign::Webhook::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(webhooks:)
        end

        sig do
          override.returns(
            { webhooks: T::Array[GrowsurfRuby::Models::Campaign::Webhook] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
