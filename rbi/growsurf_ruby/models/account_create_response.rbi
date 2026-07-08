# typed: strong

module GrowsurfRuby
  module Models
    class AccountCreateResponse < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::AccountCreateResponse,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      # An API key for the new account. Use it as the `Bearer` token on subsequent
      # requests. Locked (`403` `EMAIL_NOT_VERIFIED_ERROR`) until the account's email
      # is verified, and rotated when the account owner first signs in to the GrowSurf
      # dashboard.
      sig { returns(String) }
      attr_accessor :api_key

      sig { returns(String) }
      attr_accessor :email

      # The new account's unique identifier.
      sig { returns(String) }
      attr_accessor :id

      # GrowSurf account verification state. `VERIFIED` is required before a program
      # can send participant emails.
      sig do
        returns(
          GrowsurfRuby::Models::AccountCreateResponse::VerificationStatus::TaggedSymbol
        )
      end
      attr_accessor :verification_status

      sig do
        params(
          api_key: String,
          email: String,
          id: String,
          verification_status:
            GrowsurfRuby::Models::AccountCreateResponse::VerificationStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # An API key for the new account. Use it as the `Bearer` token on subsequent
        # requests. Locked (`403` `EMAIL_NOT_VERIFIED_ERROR`) until the account's email
        # is verified, and rotated when the account owner first signs in to the GrowSurf
        # dashboard.
        api_key:,
        email:,
        # The new account's unique identifier.
        id:,
        # GrowSurf account verification state. `VERIFIED` is required before a program
        # can send participant emails.
        verification_status:
      )
      end

      sig do
        override.returns(
          {
            api_key: String,
            email: String,
            id: String,
            verification_status:
              GrowsurfRuby::Models::AccountCreateResponse::VerificationStatus::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module VerificationStatus
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              GrowsurfRuby::Models::AccountCreateResponse::VerificationStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_REQUESTED =
          T.let(
            :NOT_REQUESTED,
            GrowsurfRuby::Models::AccountCreateResponse::VerificationStatus::TaggedSymbol
          )
        REQUESTED =
          T.let(
            :REQUESTED,
            GrowsurfRuby::Models::AccountCreateResponse::VerificationStatus::TaggedSymbol
          )
        VERIFIED =
          T.let(
            :VERIFIED,
            GrowsurfRuby::Models::AccountCreateResponse::VerificationStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              GrowsurfRuby::Models::AccountCreateResponse::VerificationStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
