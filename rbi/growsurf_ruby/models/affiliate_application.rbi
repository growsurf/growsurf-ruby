# typed: strong

module GrowsurfRuby
  module Models
    class AffiliateApplication < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::AffiliateApplication,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      # The applicant's answers to the saved application form.
      sig do
        returns(T::Array[GrowsurfRuby::AffiliateApplication::Answer])
      end
      attr_reader :answers

      sig do
        params(
          answers: T::Array[GrowsurfRuby::AffiliateApplication::Answer::OrHash]
        ).void
      end
      attr_writer :answers

      # When the application was submitted, in Unix milliseconds.
      sig { returns(Integer) }
      attr_reader :created_at

      sig { params(created_at: Integer).void }
      attr_writer :created_at

      # When the decision was made, in Unix milliseconds. `null` while pending.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :decided_at

      # Required applicant email address, or `null` after applicant data is removed
      # under the Program's retention policy.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Required applicant first name, or `null` after applicant data is removed under
      # the Program's retention policy.
      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: T.nilable(String)).void }
      attr_writer :first_name

      # Application ID.
      sig { returns(String) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Required applicant last name, or `null` after applicant data is removed under
      # the Program's retention policy.
      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: T.nilable(String)).void }
      attr_writer :last_name

      # ID of the participant created or upgraded by approval. `null` until the
      # application is approved.
      sig { returns(T.nilable(String)) }
      attr_accessor :participant_id

      # When a denied applicant may apply again, in Unix milliseconds. `null` when not
      # applicable.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :reapply_allowed_at

      # The structured reason recorded when the application was denied. `null` until
      # then.
      sig { returns(T.nilable(String)) }
      attr_accessor :rejection_reason

      # When the application was reviewed, in Unix milliseconds. `null` while pending.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :reviewed_at

      # GrowSurf risk assessment. Applications that are not `LOW` risk are held for
      # manual review; `null` means no assessment was recorded.
      sig do
        returns(
          T.nilable(
            GrowsurfRuby::AffiliateApplication::RiskLevel::TaggedSymbol
          )
        )
      end
      attr_reader :risk_level

      sig do
        params(
          risk_level:
            T.nilable(GrowsurfRuby::AffiliateApplication::RiskLevel::OrSymbol)
        ).void
      end
      attr_writer :risk_level

      # Where the application is in review. Only `PENDING` applications can be decided.
      sig do
        returns(
          GrowsurfRuby::AffiliateApplication::Status::TaggedSymbol
        )
      end
      attr_reader :status

      sig do
        params(
          status: GrowsurfRuby::AffiliateApplication::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # When the applicant accepted the Program Terms, in Unix milliseconds, or `null`
      # when acceptance was not required.
      sig { returns(T.nilable(Integer)) }
      attr_reader :terms_accepted_at

      sig { params(terms_accepted_at: T.nilable(Integer)).void }
      attr_writer :terms_accepted_at

      sig do
        params(
          answers: T::Array[GrowsurfRuby::AffiliateApplication::Answer::OrHash],
          created_at: Integer,
          decided_at: T.nilable(Integer),
          email: T.nilable(String),
          first_name: T.nilable(String),
          id: String,
          last_name: T.nilable(String),
          participant_id: T.nilable(String),
          reapply_allowed_at: T.nilable(Integer),
          rejection_reason: T.nilable(String),
          reviewed_at: T.nilable(Integer),
          risk_level:
            T.nilable(GrowsurfRuby::AffiliateApplication::RiskLevel::OrSymbol),
          status: GrowsurfRuby::AffiliateApplication::Status::OrSymbol,
          terms_accepted_at: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # The applicant's answers to the saved application form.
        answers:,
        # When the application was submitted, in Unix milliseconds.
        created_at:,
        # When the decision was made, in Unix milliseconds. `null` while pending.
        decided_at:,
        # Required applicant email address, or `null` after applicant data is removed
        # under the Program's retention policy.
        email:,
        # Required applicant first name, or `null` after applicant data is removed under
        # the Program's retention policy.
        first_name:,
        # Application ID.
        id:,
        # Required applicant last name, or `null` after applicant data is removed under
        # the Program's retention policy.
        last_name:,
        # ID of the participant created or upgraded by approval. `null` until the
        # application is approved.
        participant_id:,
        # When a denied applicant may apply again, in Unix milliseconds. `null` when not
        # applicable.
        reapply_allowed_at:,
        # The structured reason recorded when the application was denied. `null` until
        # then.
        rejection_reason:,
        # When the application was reviewed, in Unix milliseconds. `null` while pending.
        reviewed_at:,
        # GrowSurf risk assessment. Applications that are not `LOW` risk are held for
        # manual review; `null` means no assessment was recorded.
        risk_level:,
        # Where the application is in review. Only `PENDING` applications can be decided.
        status:,
        # When the applicant accepted the Program Terms, in Unix milliseconds, or `null`
        # when acceptance was not required.
        terms_accepted_at:
      )
      end

      sig do
        override.returns(
          {
            answers: T::Array[GrowsurfRuby::AffiliateApplication::Answer],
            created_at: Integer,
            decided_at: T.nilable(Integer),
            email: T.nilable(String),
            first_name: T.nilable(String),
            id: String,
            last_name: T.nilable(String),
            participant_id: T.nilable(String),
            reapply_allowed_at: T.nilable(Integer),
            rejection_reason: T.nilable(String),
            reviewed_at: T.nilable(Integer),
            risk_level:
              T.nilable(
                GrowsurfRuby::AffiliateApplication::RiskLevel::TaggedSymbol
              ),
            status:
              GrowsurfRuby::AffiliateApplication::Status::TaggedSymbol,
            terms_accepted_at: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      class Answer < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::AffiliateApplication::Answer,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # Stable key of the saved application-form field this answer belongs to.
        sig { returns(String) }
        attr_reader :field_id

        sig { params(field_id: String).void }
        attr_writer :field_id

        # Customer-configured field label captured when the applicant submitted.
        sig { returns(String) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        # Saved field type that determined how the scalar answer was validated.
        sig do
          returns(
            GrowsurfRuby::AffiliateApplication::Answer::Type::TaggedSymbol
          )
        end
        attr_reader :type

        sig do
          params(
            type: GrowsurfRuby::AffiliateApplication::Answer::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Applicant answer represented as one validated string, number, or boolean.
        sig { returns(T.any(String, Integer, Float, T::Boolean)) }
        attr_reader :value

        sig { params(value: T.any(String, Integer, Float, T::Boolean)).void }
        attr_writer :value

        sig do
          params(
            field_id: String,
            label: String,
            type: GrowsurfRuby::AffiliateApplication::Answer::Type::OrSymbol,
            value: T.any(String, Integer, Float, T::Boolean)
          ).returns(T.attached_class)
        end
        def self.new(
          # Stable key of the saved application-form field this answer belongs to.
          field_id:,
          # Customer-configured field label captured when the applicant submitted.
          label:,
          # Saved field type that determined how the scalar answer was validated.
          type:,
          # Applicant answer represented as one validated string, number, or boolean.
          value:
        )
        end

        sig do
          override.returns(
            {
              field_id: String,
              label: String,
              type:
                GrowsurfRuby::AffiliateApplication::Answer::Type::TaggedSymbol,
              value: T.any(String, Integer, Float, T::Boolean)
            }
          )
        end
        def to_hash
        end

        module Type
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                GrowsurfRuby::AffiliateApplication::Answer::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              GrowsurfRuby::AffiliateApplication::Answer::Type::TaggedSymbol
            )
          TEXTAREA =
            T.let(
              :textarea,
              GrowsurfRuby::AffiliateApplication::Answer::Type::TaggedSymbol
            )
          URL =
            T.let(
              :url,
              GrowsurfRuby::AffiliateApplication::Answer::Type::TaggedSymbol
            )
          COUNTRY =
            T.let(
              :country,
              GrowsurfRuby::AffiliateApplication::Answer::Type::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              GrowsurfRuby::AffiliateApplication::Answer::Type::TaggedSymbol
            )
          DROPDOWN =
            T.let(
              :dropdown,
              GrowsurfRuby::AffiliateApplication::Answer::Type::TaggedSymbol
            )
          RADIO =
            T.let(
              :radio,
              GrowsurfRuby::AffiliateApplication::Answer::Type::TaggedSymbol
            )
          CHECKBOX =
            T.let(
              :checkbox,
              GrowsurfRuby::AffiliateApplication::Answer::Type::TaggedSymbol
            )

          sig do
            returns(
              T::Array[
                GrowsurfRuby::AffiliateApplication::Answer::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # GrowSurf risk assessment. Applications that are not `LOW` risk are held for
      # manual review; `null` means no assessment was recorded.
      module RiskLevel
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, GrowsurfRuby::AffiliateApplication::RiskLevel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW =
          T.let(
            :LOW,
            GrowsurfRuby::AffiliateApplication::RiskLevel::TaggedSymbol
          )
        MEDIUM =
          T.let(
            :MEDIUM,
            GrowsurfRuby::AffiliateApplication::RiskLevel::TaggedSymbol
          )
        HIGH =
          T.let(
            :HIGH,
            GrowsurfRuby::AffiliateApplication::RiskLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              GrowsurfRuby::AffiliateApplication::RiskLevel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Where the application is in review. Only `PENDING` applications can be decided.
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, GrowsurfRuby::AffiliateApplication::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :PENDING,
            GrowsurfRuby::AffiliateApplication::Status::TaggedSymbol
          )
        APPROVED =
          T.let(
            :APPROVED,
            GrowsurfRuby::AffiliateApplication::Status::TaggedSymbol
          )
        DENIED =
          T.let(
            :DENIED,
            GrowsurfRuby::AffiliateApplication::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[GrowsurfRuby::AffiliateApplication::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
