# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class RewardApproveResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::RewardApproveResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :success

        sig { params(success: T::Boolean).returns(T.attached_class) }
        def self.new(success:)
        end

        sig { override.returns({ success: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
