# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#email
      class ParticipantEmailParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute participant_id_or_email
        #
        #   @return [String]
        required :participant_id_or_email, String

        # @!attribute body
        #   HTML body for a free-form email. You can personalize it with dynamic text,
        #   inserting `{{...}}` tokens like `{{firstName}}` or `{{shareUrl}}`. See
        #   [Guide to using dynamic text in GrowSurf emails](https://support.growsurf.com/article/213-guide-to-using-dynamic-text-in-growsurf-emails).
        #
        #   @return [String, nil]
        optional :body, String

        # @!attribute email_type
        #   The program email template to send (template mode). Send the camelCase key.
        #   The valid types depend on the program type; `isEnabled` only controls automatic sends.
        #   Referral programs: `welcomeNonReferred`, `referralLinkViewedFirstTime`,
        #   `referralLinkUsed`, `referredSignup`, `welcomeReferred`, `goalAchieved`,
        #   `campaignEndedWinners`, `campaignEndedNonWinners`, `progressUpdateMonthly`.
        #   Affiliate programs: `welcomeNonReferred`, `referralLinkViewedFirstTime`,
        #   `referredSignup`, `commissionGenerated`, `commissionAdjusted`, `payoutPending`,
        #   `payoutSentSuccess`, `progressUpdateMonthly`. System/transactional types (login
        #   link, PayPal confirmation, tax) and the invite email cannot be sent.
        #
        #   @return [String, nil]
        optional :email_type, String, api_name: :emailType

        # @!attribute preheader
        #   Optional preheader text for a free-form email.
        #
        #   @return [String, nil]
        optional :preheader, String

        # @!attribute subject
        #   Subject line for a free-form email. Supports dynamic text (`{{...}}` tokens),
        #   the same as the body.
        #
        #   @return [String, nil]
        optional :subject, String

        # @!method initialize(id:, participant_id_or_email:, body: nil, email_type: nil, preheader: nil, subject: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::Campaign::ParticipantEmailParams} for more details.
        #
        #   @param id [String]
        #
        #   @param participant_id_or_email [String]
        #
        #   @param body [String] HTML body for a free-form email. You can personalize it with dynamic text, inserting `{{...}}` tokens like `{{firstName}}` or `{{shareUrl}}`. See [Guide to using dynamic text in GrowSurf emails](https://support.growsurf.com/article/213-guide-to-using-dynamic-text-in-growsurf-emails).
        #
        #   @param email_type [String] The program email template to send (template mode). Send the camelCase key; it m
        #
        #   @param preheader [String] Optional preheader text for a free-form email.
        #
        #   @param subject [String] Subject line for a free-form email. Supports dynamic text (`{{...}}` tokens), the same as the body.
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
