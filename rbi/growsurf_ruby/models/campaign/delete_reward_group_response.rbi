# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class DeleteRewardGroupResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(DeleteRewardGroupResponse, GrowsurfRuby::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :moved_to_default

        sig { returns(T::Boolean) }
        attr_accessor :success

        sig do
          params(id: String, moved_to_default: Integer, success: T::Boolean).returns(
            T.attached_class
          )
        end
        def self.new(id:, moved_to_default:, success:)
        end

        sig do
          override.returns(
            { id: String, moved_to_default: Integer, success: T::Boolean }
          )
        end
        def to_hash
        end
      end
    end
  end
end
