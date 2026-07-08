# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantEmailParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::ParticipantEmailParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :participant_id_or_email

        # HTML body for a free-form email. You can personalize it with dynamic text,
        # inserting `{{...}}` tokens like `{{firstName}}` or `{{shareUrl}}`. See
        # [Guide to using dynamic text in GrowSurf emails](https://support.growsurf.com/article/213-guide-to-using-dynamic-text-in-growsurf-emails).
        sig { returns(T.nilable(String)) }
        attr_reader :body

        sig { params(body: String).void }
        attr_writer :body

        # The program email template to send (template mode). Send the camelCase key.
        # The valid types depend on the program type; `isEnabled` only controls automatic sends.
        # Referral programs: `welcomeNonReferred`, `referralLinkViewedFirstTime`,
        # `referralLinkUsed`, `referredSignup`, `welcomeReferred`, `goalAchieved`,
        # `campaignEndedWinners`, `campaignEndedNonWinners`, `progressUpdateMonthly`.
        # Affiliate programs: `welcomeNonReferred`, `referralLinkViewedFirstTime`,
        # `referredSignup`, `commissionGenerated`, `commissionAdjusted`, `payoutPending`,
        # `payoutSentSuccess`, `progressUpdateMonthly`. System/transactional types (login
        # link, PayPal confirmation, tax) and the invite email cannot be sent.
        sig { returns(T.nilable(String)) }
        attr_reader :email_type

        sig { params(email_type: String).void }
        attr_writer :email_type

        # Optional preheader text for a free-form email.
        sig { returns(T.nilable(String)) }
        attr_reader :preheader

        sig { params(preheader: String).void }
        attr_writer :preheader

        # Subject line for a free-form email. Supports dynamic text (`{{...}}` tokens),
        # the same as the body.
        sig { returns(T.nilable(String)) }
        attr_reader :subject

        sig { params(subject: String).void }
        attr_writer :subject

        sig do
          params(
            id: String,
            participant_id_or_email: String,
            body: String,
            email_type: String,
            preheader: String,
            subject: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          participant_id_or_email:,
          # HTML body for a free-form email. You can personalize it with dynamic text,
          # inserting `{{...}}` tokens like `{{firstName}}` or `{{shareUrl}}`. See
          # [Guide to using dynamic text in GrowSurf emails](https://support.growsurf.com/article/213-guide-to-using-dynamic-text-in-growsurf-emails).
          body: nil,
          # The program email template to send (template mode). Send the camelCase key.
          # The valid types depend on the program type; `isEnabled` only controls automatic sends.
          # Referral programs: `welcomeNonReferred`, `referralLinkViewedFirstTime`,
          # `referralLinkUsed`, `referredSignup`, `welcomeReferred`, `goalAchieved`,
          # `campaignEndedWinners`, `campaignEndedNonWinners`, `progressUpdateMonthly`.
          # Affiliate programs: `welcomeNonReferred`, `referralLinkViewedFirstTime`,
          # `referredSignup`, `commissionGenerated`, `commissionAdjusted`, `payoutPending`,
          # `payoutSentSuccess`, `progressUpdateMonthly`. System/transactional types (login
          # link, PayPal confirmation, tax) and the invite email cannot be sent.
          email_type: nil,
          # Optional preheader text for a free-form email.
          preheader: nil,
          # Subject line for a free-form email. Supports dynamic text (`{{...}}` tokens),
          # the same as the body.
          subject: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              participant_id_or_email: String,
              body: String,
              email_type: String,
              preheader: String,
              subject: String,
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
