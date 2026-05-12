# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantCreateMobileTokenResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::ParticipantCreateMobileTokenResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # Token lifetime in seconds.
        sig { returns(Integer) }
        attr_accessor :expires_in

        # Participant-scoped bearer token for GrowSurf mobile SDK participant endpoints.
        sig { returns(String) }
        attr_accessor :participant_token

        sig do
          params(expires_in: Integer, participant_token: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Token lifetime in seconds.
          expires_in:,
          # Participant-scoped bearer token for GrowSurf mobile SDK participant endpoints.
          participant_token:
        )
        end

        sig do
          override.returns({ expires_in: Integer, participant_token: String })
        end
        def to_hash
        end
      end
    end
  end
end
