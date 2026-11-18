# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantSendInvitesResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::ParticipantSendInvitesResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :invites_sent

        sig { returns(String) }
        attr_accessor :message_type

        sig { returns(T::Boolean) }
        attr_accessor :success

        # Human-readable detail for the result. Empty when there is nothing to add.
        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig do
          params(
            invites_sent: Integer,
            message_type: String,
            success: T::Boolean,
            message: String
          ).returns(T.attached_class)
        end
        def self.new(
          invites_sent:,
          message_type:,
          success:,
          # Human-readable detail for the result. Empty when there is nothing to add.
          message: nil
        )
        end

        sig do
          override.returns(
            {
              invites_sent: Integer,
              message_type: String,
              success: T::Boolean,
              message: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
