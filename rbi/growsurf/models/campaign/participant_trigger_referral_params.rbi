# typed: strong

module Growsurf
  module Models
    module Campaign
      class ParticipantTriggerReferralParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Growsurf::Campaign::ParticipantTriggerReferralParams,
              Growsurf::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :participant_id_or_email

        sig do
          params(
            id: String,
            participant_id_or_email: String,
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, participant_id_or_email:, request_options: {})
        end

        sig do
          override.returns(
            {
              id: String,
              participant_id_or_email: String,
              request_options: Growsurf::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
