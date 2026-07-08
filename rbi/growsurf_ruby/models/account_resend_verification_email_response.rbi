# typed: strong

module GrowsurfRuby
  module Models
    class AccountResendVerificationEmailResponse < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::AccountResendVerificationEmailResponse,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig do
        returns(
          GrowsurfRuby::Models::AccountResendVerificationEmailResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      sig { returns(T::Boolean) }
      attr_accessor :success

      sig do
        params(
          status:
            GrowsurfRuby::Models::AccountResendVerificationEmailResponse::Status::OrSymbol,
          success: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(status:, success:)
      end

      sig do
        override.returns(
          {
            status:
              GrowsurfRuby::Models::AccountResendVerificationEmailResponse::Status::TaggedSymbol,
            success: T::Boolean
          }
        )
      end
      def to_hash
      end

      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              GrowsurfRuby::Models::AccountResendVerificationEmailResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SENT =
          T.let(
            :SENT,
            GrowsurfRuby::Models::AccountResendVerificationEmailResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              GrowsurfRuby::Models::AccountResendVerificationEmailResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
