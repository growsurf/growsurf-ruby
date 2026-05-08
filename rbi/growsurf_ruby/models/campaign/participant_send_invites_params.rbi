# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantSendInvitesParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::ParticipantSendInvitesParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :participant_id_or_email

        sig { returns(T::Array[String]) }
        attr_accessor :email_addresses

        sig { returns(String) }
        attr_accessor :message_text

        sig { returns(String) }
        attr_accessor :subject_text

        sig do
          params(
            id: String,
            participant_id_or_email: String,
            email_addresses: T::Array[String],
            message_text: String,
            subject_text: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          participant_id_or_email:,
          email_addresses:,
          message_text:,
          subject_text:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              participant_id_or_email: String,
              email_addresses: T::Array[String],
              message_text: String,
              subject_text: String,
              request_options: GrowsurfRuby::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
