# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class DeleteRewardResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::DeleteRewardResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # The deleted reward ID.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :success

        sig do
          params(id: String, success: T::Boolean).returns(T.attached_class)
        end
        def self.new(
          # The deleted reward ID.
          id:,
          success:
        )
        end

        sig { override.returns({ id: String, success: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
