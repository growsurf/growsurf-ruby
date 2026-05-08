# typed: strong

module GrowsurfRuby
  module Models
    class ParticipantList < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(GrowsurfRuby::ParticipantList, GrowsurfRuby::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :limit

      sig { returns(T.nilable(String)) }
      attr_accessor :next_id

      sig { returns(T::Array[GrowsurfRuby::Campaign::CampaignParticipant]) }
      attr_accessor :participants

      sig do
        params(
          limit: Integer,
          next_id: T.nilable(String),
          participants:
            T::Array[GrowsurfRuby::Campaign::CampaignParticipant::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(limit:, next_id:, participants:)
      end

      sig do
        override.returns(
          {
            limit: Integer,
            next_id: T.nilable(String),
            participants: T::Array[GrowsurfRuby::Campaign::CampaignParticipant]
          }
        )
      end
      def to_hash
      end
    end
  end
end
