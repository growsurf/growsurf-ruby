# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#retrieve_affiliate_application
    class AffiliateApplication < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute answers
      #   The applicant's answers to the saved application form.
      #
      #   @return [Array<GrowsurfRuby::Models::AffiliateApplication::Answer>]
      required :answers, -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::AffiliateApplication::Answer] }

      # @!attribute created_at
      #   When the application was submitted, in Unix milliseconds.
      #
      #   @return [Integer]
      required :created_at, Integer, api_name: :createdAt

      # @!attribute decided_at
      #   When the decision was made, in Unix milliseconds. `null` while pending.
      #
      #   @return [Integer, nil]
      required :decided_at, Integer, api_name: :decidedAt, nil?: true

      # @!attribute email
      #   Required applicant email address, or `null` after applicant data is removed
      #   under the Program's retention policy.
      #
      #   @return [String, nil]
      required :email, String, nil?: true

      # @!attribute first_name
      #   Required applicant first name, or `null` after applicant data is removed under
      #   the Program's retention policy.
      #
      #   @return [String, nil]
      required :first_name, String, api_name: :firstName, nil?: true

      # @!attribute id
      #   Application ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute last_name
      #   Required applicant last name, or `null` after applicant data is removed under
      #   the Program's retention policy.
      #
      #   @return [String, nil]
      required :last_name, String, api_name: :lastName, nil?: true

      # @!attribute participant_id
      #   ID of the participant created or upgraded by approval. `null` until the
      #   application is approved.
      #
      #   @return [String, nil]
      required :participant_id, String, api_name: :participantId, nil?: true

      # @!attribute reapply_allowed_at
      #   When a denied applicant may apply again, in Unix milliseconds. `null` when not
      #   applicable.
      #
      #   @return [Integer, nil]
      required :reapply_allowed_at, Integer, api_name: :reapplyAllowedAt, nil?: true

      # @!attribute rejection_reason
      #   The structured reason recorded when the application was denied. `null` until
      #   then.
      #
      #   @return [String, nil]
      required :rejection_reason, String, api_name: :rejectionReason, nil?: true

      # @!attribute reviewed_at
      #   When the application was reviewed, in Unix milliseconds. `null` while pending.
      #
      #   @return [Integer, nil]
      required :reviewed_at, Integer, api_name: :reviewedAt, nil?: true

      # @!attribute risk_level
      #   GrowSurf risk assessment. Applications that are not `LOW` risk are held for
      #   manual review; `null` means no assessment was recorded.
      #
      #   @return [Symbol, GrowsurfRuby::Models::AffiliateApplication::RiskLevel, nil]
      required :risk_level,
               enum: -> { GrowsurfRuby::AffiliateApplication::RiskLevel },
               api_name: :riskLevel,
               nil?: true

      # @!attribute status
      #   Where the application is in review. Only `PENDING` applications can be decided.
      #
      #   @return [Symbol, GrowsurfRuby::Models::AffiliateApplication::Status]
      required :status, enum: -> { GrowsurfRuby::AffiliateApplication::Status }

      # @!attribute terms_accepted_at
      #   When the applicant accepted the Program Terms, in Unix milliseconds, or `null`
      #   when acceptance was not required.
      #
      #   @return [Integer, nil]
      required :terms_accepted_at, Integer, api_name: :termsAcceptedAt, nil?: true

      # @!method initialize(answers: nil, created_at: nil, decided_at: nil, email: nil, first_name: nil, id: nil, last_name: nil, participant_id: nil, reapply_allowed_at: nil, rejection_reason: nil, reviewed_at: nil, risk_level: nil, status: nil, terms_accepted_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {GrowsurfRuby::Models::AffiliateApplication} for more details.
      #
      #   @param answers [Array<GrowsurfRuby::Models::AffiliateApplication::Answer>] The applicant's answers to the saved application form.
      #
      #   @param created_at [Integer] When the application was submitted, in Unix milliseconds.
      #
      #   @param decided_at [Integer, nil] When the decision was made, in Unix milliseconds. `null` while pending.
      #
      #   @param email [String, nil] Required applicant email address, or `null` after applicant data is removed
      #
      #   @param first_name [String, nil] Required applicant first name, or `null` after applicant data is removed under
      #
      #   @param id [String] Application ID.
      #
      #   @param last_name [String, nil] Required applicant last name, or `null` after applicant data is removed under
      #
      #   @param participant_id [String, nil] ID of the participant created or upgraded by approval. `null` until the
      #
      #   @param reapply_allowed_at [Integer, nil] When a denied applicant may apply again, in Unix milliseconds. `null` when not
      #
      #   @param rejection_reason [String, nil] The structured reason recorded when the application was denied. `null` until
      #
      #   @param reviewed_at [Integer, nil] When the application was reviewed, in Unix milliseconds. `null` while pending.
      #
      #   @param risk_level [Symbol, GrowsurfRuby::Models::AffiliateApplication::RiskLevel, nil] GrowSurf risk assessment. Applications that are not `LOW` risk are held for
      #
      #   @param status [Symbol, GrowsurfRuby::Models::AffiliateApplication::Status] Where the application is in review. Only `PENDING` applications can be decided.
      #
      #   @param terms_accepted_at [Integer, nil] When the applicant accepted the Program Terms, in Unix milliseconds, or `null`
      #
      class Answer < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute field_id
        #   Stable key of the saved application-form field this answer belongs to.
        #
        #   @return [String]
        required :field_id, String, api_name: :fieldId

        # @!attribute label
        #   Customer-configured field label captured when the applicant submitted.
        #
        #   @return [String]
        required :label, String

        # @!attribute type
        #   Saved field type that determined how the scalar answer was validated.
        #
        #   @return [Symbol, GrowsurfRuby::Models::AffiliateApplication::Answer::Type]
        required :type, enum: -> { GrowsurfRuby::AffiliateApplication::Answer::Type }

        # @!attribute value
        #   Applicant answer represented as one validated string, number, or boolean.
        #
        #   @return [String, Integer, Float, Boolean]
        required :value, -> { GrowsurfRuby::AffiliateApplication::Answer::Value }

        # @!method initialize(field_id: nil, label: nil, type: nil, value: nil)
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::AffiliateApplication::Answer} for more details.
        #
        #   @param field_id [String] Stable key of the saved application-form field this answer belongs to.
        #
        #   @param label [String] Customer-configured field label captured when the applicant submitted.
        #
        #   @param type [Symbol, GrowsurfRuby::Models::AffiliateApplication::Answer::Type] Saved field type that determined how the scalar answer was validated.
        #
        #   @param value [String, Integer, Float, Boolean] Applicant answer represented as one validated scalar.

        class Value
          extend GrowsurfRuby::Internal::Type::Converter
          extend GrowsurfRuby::Internal::Util::SorbetRuntimeSupport

          private_class_method :new

          def self.===(other)
            scalar?(other)
          end

          def self.coerce(value, state:)
            matches = scalar?(value)
            state.fetch(:exactness)[matches ? :yes : :no] += 1
            state[:error] = ArgumentError.new("expected a string, number, or boolean") unless matches
            value
          end

          def self.to_sorbet_type
            T.any(String, Integer, Float, T::Boolean)
          end

          def self.scalar?(value)
            value.is_a?(String) ||
              value.is_a?(Integer) ||
              value.is_a?(Float) ||
              value == true ||
              value == false
          end
          private_class_method :scalar?
        end

        module Type
          extend GrowsurfRuby::Internal::Type::Enum

          TEXT = :text
          TEXTAREA = :textarea
          URL = :url
          COUNTRY = :country
          NUMBER = :number
          DROPDOWN = :dropdown
          RADIO = :radio
          CHECKBOX = :checkbox

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # GrowSurf risk assessment. Applications that are not `LOW` risk are held for
      # manual review; `null` means no assessment was recorded.
      #
      # @see GrowsurfRuby::Models::AffiliateApplication#risk_level
      module RiskLevel
        extend GrowsurfRuby::Internal::Type::Enum

        LOW = :LOW
        MEDIUM = :MEDIUM
        HIGH = :HIGH

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Where the application is in review. Only `PENDING` applications can be decided.
      #
      # @see GrowsurfRuby::Models::AffiliateApplication#status
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        PENDING = :PENDING
        APPROVED = :APPROVED
        DENIED = :DENIED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
