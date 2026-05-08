# typed: strong

module Growsurf
  module Models
    module Campaign
      class ParticipantSendInvitesResponse < Growsurf::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Growsurf::Models::Campaign::ParticipantSendInvitesResponse,
              Growsurf::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :invites_sent

        sig { returns(String) }
        attr_accessor :message_type

        sig { returns(T::Boolean) }
        attr_accessor :success

        sig do
          params(
            invites_sent: Integer,
            message_type: String,
            success: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(invites_sent:, message_type:, success:)
        end

        sig do
          override.returns(
            { invites_sent: Integer, message_type: String, success: T::Boolean }
          )
        end
        def to_hash
        end
      end
    end
  end
end
