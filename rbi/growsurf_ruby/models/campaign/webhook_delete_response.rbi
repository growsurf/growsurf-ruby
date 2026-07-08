# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class WebhookDeleteResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::WebhookDeleteResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :success

        sig do
          params(id: String, success: T::Boolean).returns(T.attached_class)
        end
        def self.new(id:, success:)
        end

        sig { override.returns({ id: String, success: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
