# typed: strong

module Growsurf
  module Models
    module Campaign
      class ParticipantTriggerReferralResponse < Growsurf::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Growsurf::Models::Campaign::ParticipantTriggerReferralResponse,
              Growsurf::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :success

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig do
          params(success: T::Boolean, message: String).returns(T.attached_class)
        end
        def self.new(success:, message: nil)
        end

        sig { override.returns({ success: T::Boolean, message: String }) }
        def to_hash
        end
      end
    end
  end
end
