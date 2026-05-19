# typed: strong

module GrowsurfRuby
  module Models
    class CampaignCreateMobileParticipantTokenResponse < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::CampaignCreateMobileParticipantTokenResponse,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      # Token lifetime in seconds.
      sig { returns(Integer) }
      attr_accessor :expires_in

      # Whether this request created a new participant. Returns false when the
      # participant already existed.
      sig { returns(T::Boolean) }
      attr_accessor :is_new

      sig { returns(GrowsurfRuby::Campaign::CampaignParticipant) }
      attr_reader :participant

      sig do
        params(
          participant: GrowsurfRuby::Campaign::CampaignParticipant::OrHash
        ).void
      end
      attr_writer :participant

      # Participant-scoped bearer token for GrowSurf mobile SDK participant endpoints.
      sig { returns(String) }
      attr_accessor :participant_token

      sig do
        params(
          expires_in: Integer,
          is_new: T::Boolean,
          participant: GrowsurfRuby::Campaign::CampaignParticipant::OrHash,
          participant_token: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Token lifetime in seconds.
        expires_in:,
        # Whether this request created a new participant. Returns false when the
        # participant already existed.
        is_new:,
        participant:,
        # Participant-scoped bearer token for GrowSurf mobile SDK participant endpoints.
        participant_token:
      )
      end

      sig do
        override.returns(
          {
            expires_in: Integer,
            is_new: T::Boolean,
            participant: GrowsurfRuby::Campaign::CampaignParticipant,
            participant_token: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
