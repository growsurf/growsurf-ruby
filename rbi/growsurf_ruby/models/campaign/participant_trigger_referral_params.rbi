# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantTriggerReferralParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::ParticipantTriggerReferralParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :participant_id_or_email

        # Number of whole days to hold referral credit before it is awarded. Useful for
        # honoring a refund window before crediting a referrer. Omit this field to award
        # credit immediately. The credit is awarded automatically once the delay elapses,
        # and can be cancelled before then with the Cancel delayed referral trigger
        # request.
        sig { returns(T.nilable(Integer)) }
        attr_reader :delay_in_days

        sig { params(delay_in_days: Integer).void }
        attr_writer :delay_in_days

        sig do
          params(
            id: String,
            participant_id_or_email: String,
            delay_in_days: Integer,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          participant_id_or_email:,
          # Number of whole days to hold referral credit before it is awarded. Useful for
          # honoring a refund window before crediting a referrer. Omit this field to award
          # credit immediately. The credit is awarded automatically once the delay elapses,
          # and can be cancelled before then with the Cancel delayed referral trigger
          # request.
          delay_in_days: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              participant_id_or_email: String,
              delay_in_days: Integer,
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
