# typed: strong

module Growsurf
  module Models
    module Campaign
      class ParticipantListRewardsResponse < Growsurf::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Growsurf::Models::Campaign::ParticipantListRewardsResponse,
              Growsurf::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :limit

        sig { returns(T.nilable(String)) }
        attr_accessor :next_id

        sig { returns(T::Array[Growsurf::Campaign::ParticipantReward]) }
        attr_accessor :rewards

        sig do
          params(
            limit: Integer,
            next_id: T.nilable(String),
            rewards: T::Array[Growsurf::Campaign::ParticipantReward::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(limit:, next_id:, rewards:)
        end

        sig do
          override.returns(
            {
              limit: Integer,
              next_id: T.nilable(String),
              rewards: T::Array[Growsurf::Campaign::ParticipantReward]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
