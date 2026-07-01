# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class CampaignRewardListResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::CampaignRewardListResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # The program's active, visible, and enabled rewards.
        sig { returns(T::Array[GrowsurfRuby::Models::Campaign::Reward]) }
        attr_accessor :rewards

        # The list of a program's configured rewards.
        sig do
          params(
            rewards: T::Array[GrowsurfRuby::Models::Campaign::Reward::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The program's active, visible, and enabled rewards.
          rewards:
        )
        end

        sig do
          override.returns(
            { rewards: T::Array[GrowsurfRuby::Models::Campaign::Reward] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
