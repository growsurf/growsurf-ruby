# typed: strong

module GrowsurfRuby
  module Models
    class TeamResendOwnerVerificationEmailResponse < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::TeamResendOwnerVerificationEmailResponse,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig do
        returns(
          GrowsurfRuby::Models::TeamResendOwnerVerificationEmailResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      sig { returns(T::Boolean) }
      attr_accessor :success

      sig do
        params(
          status:
            GrowsurfRuby::Models::TeamResendOwnerVerificationEmailResponse::Status::OrSymbol,
          success: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(status:, success:)
      end

      sig do
        override.returns(
          {
            status:
              GrowsurfRuby::Models::TeamResendOwnerVerificationEmailResponse::Status::TaggedSymbol,
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
              GrowsurfRuby::Models::TeamResendOwnerVerificationEmailResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SENT = T.let(:SENT, TaggedSymbol)

        sig { override.returns(T::Array[TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
