# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class RewardGroupListResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(RewardGroupListResponse, GrowsurfRuby::Internal::AnyHash)
          end

        sig { returns(T::Array[RewardGroup]) }
        attr_accessor :groups

        sig do
          params(groups: T::Array[RewardGroup::OrHash]).returns(T.attached_class)
        end
        def self.new(groups:)
        end

        sig { override.returns({ groups: T::Array[RewardGroup] }) }
        def to_hash
        end
      end
    end
  end
end
