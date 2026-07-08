# typed: strong

module GrowsurfRuby
  module Models
    class Account < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(GrowsurfRuby::Account, GrowsurfRuby::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :email

      # The account's unique identifier.
      sig { returns(String) }
      attr_accessor :id

      # GrowSurf-team verification state. `VERIFIED` is required before a program can
      # send participant emails.
      sig { returns(GrowsurfRuby::Account::VerificationStatus::OrSymbol) }
      attr_accessor :verification_status

      sig { returns(T.nilable(String)) }
      attr_accessor :company

      # When the account was created, as a Unix timestamp in milliseconds.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :first_name

      sig { returns(T.nilable(String)) }
      attr_accessor :last_name

      # When team verification was last requested, as a Unix timestamp in milliseconds.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :verification_requested_at

      sig do
        params(
          email: String,
          id: String,
          verification_status:
            GrowsurfRuby::Account::VerificationStatus::OrSymbol,
          company: T.nilable(String),
          created_at: T.nilable(Integer),
          first_name: T.nilable(String),
          last_name: T.nilable(String),
          verification_requested_at: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        email:,
        # The account's unique identifier.
        id:,
        # GrowSurf-team verification state. `VERIFIED` is required before a program can
        # send participant emails.
        verification_status:,
        company: nil,
        # When the account was created, as a Unix timestamp in milliseconds.
        created_at: nil,
        first_name: nil,
        last_name: nil,
        # When team verification was last requested, as a Unix timestamp in milliseconds.
        verification_requested_at: nil
      )
      end

      sig do
        override.returns(
          {
            email: String,
            id: String,
            verification_status:
              GrowsurfRuby::Account::VerificationStatus::TaggedSymbol,
            company: T.nilable(String),
            created_at: T.nilable(Integer),
            first_name: T.nilable(String),
            last_name: T.nilable(String),
            verification_requested_at: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      # GrowSurf-team verification state. `VERIFIED` is required before a program can
      # send participant emails.
      module VerificationStatus
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, GrowsurfRuby::Account::VerificationStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_REQUESTED =
          T.let(
            :NOT_REQUESTED,
            GrowsurfRuby::Account::VerificationStatus::TaggedSymbol
          )
        REQUESTED =
          T.let(
            :REQUESTED,
            GrowsurfRuby::Account::VerificationStatus::TaggedSymbol
          )
        VERIFIED =
          T.let(
            :VERIFIED,
            GrowsurfRuby::Account::VerificationStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[GrowsurfRuby::Account::VerificationStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
