# typed: strong

module Growsurf
  module Models
    class ParticipantList < Growsurf::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Growsurf::ParticipantList, Growsurf::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :limit

      sig { returns(T.nilable(String)) }
      attr_accessor :next_id

      sig { returns(T::Array[Growsurf::Campaign::CampaignParticipant]) }
      attr_accessor :participants

      sig do
        params(
          limit: Integer,
          next_id: T.nilable(String),
          participants:
            T::Array[Growsurf::Campaign::CampaignParticipant::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(limit:, next_id:, participants:)
      end

      sig do
        override.returns(
          {
            limit: Integer,
            next_id: T.nilable(String),
            participants: T::Array[Growsurf::Campaign::CampaignParticipant]
          }
        )
      end
      def to_hash
      end
    end
  end
end
