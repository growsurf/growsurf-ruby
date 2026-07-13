# typed: strong

module GrowsurfRuby
  module Models
    class Team < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(GrowsurfRuby::Models::Team, GrowsurfRuby::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :name

      sig do
        returns(GrowsurfRuby::Models::Team::VerificationStatus::TaggedSymbol)
      end
      attr_accessor :verification_status

      sig { returns(T.nilable(Integer)) }
      attr_accessor :verification_requested_at

      sig do
        params(
          name: String,
          verification_status:
            GrowsurfRuby::Models::Team::VerificationStatus::OrSymbol,
          verification_requested_at: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(name:, verification_status:, verification_requested_at:)
      end

      sig do
        override.returns(
          {
            name: String,
            verification_status:
              GrowsurfRuby::Models::Team::VerificationStatus::TaggedSymbol,
            verification_requested_at: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      module VerificationStatus
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, GrowsurfRuby::Models::Team::VerificationStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_REQUESTED = T.let(:NOT_REQUESTED, TaggedSymbol)
        REQUESTED = T.let(:REQUESTED, TaggedSymbol)
        VERIFIED = T.let(:VERIFIED, TaggedSymbol)

        sig { override.returns(T::Array[TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
