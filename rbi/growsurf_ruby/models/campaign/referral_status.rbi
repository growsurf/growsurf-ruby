# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      module ReferralStatus
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, GrowsurfRuby::Campaign::ReferralStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT_PENDING =
          T.let(
            :CREDIT_PENDING,
            GrowsurfRuby::Campaign::ReferralStatus::TaggedSymbol
          )
        CREDIT_AWARDED =
          T.let(
            :CREDIT_AWARDED,
            GrowsurfRuby::Campaign::ReferralStatus::TaggedSymbol
          )
        CREDIT_EXPIRED =
          T.let(
            :CREDIT_EXPIRED,
            GrowsurfRuby::Campaign::ReferralStatus::TaggedSymbol
          )
        INVITE_SENT =
          T.let(
            :INVITE_SENT,
            GrowsurfRuby::Campaign::ReferralStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[GrowsurfRuby::Campaign::ReferralStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
