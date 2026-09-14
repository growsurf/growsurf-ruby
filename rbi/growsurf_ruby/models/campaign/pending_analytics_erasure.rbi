# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class PendingAnalyticsErasure < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::PendingAnalyticsErasure,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :status
        sig { returns(String) }
        attr_accessor :operation_id

        sig do
          params(status: String, operation_id: String).returns(T.attached_class)
        end
        def self.new(status:, operation_id:)
        end

        sig { override.returns({ status: String, operation_id: String }) }
        def to_hash
        end
      end
    end
  end
end
