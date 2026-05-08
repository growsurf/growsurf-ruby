# typed: strong

module Growsurf
  module Models
    module Campaign
      module ReferralStatus
        extend Growsurf::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Growsurf::Campaign::ReferralStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT_PENDING =
          T.let(
            :CREDIT_PENDING,
            Growsurf::Campaign::ReferralStatus::TaggedSymbol
          )
        CREDIT_AWARDED =
          T.let(
            :CREDIT_AWARDED,
            Growsurf::Campaign::ReferralStatus::TaggedSymbol
          )
        CREDIT_EXPIRED =
          T.let(
            :CREDIT_EXPIRED,
            Growsurf::Campaign::ReferralStatus::TaggedSymbol
          )
        INVITE_SENT =
          T.let(:INVITE_SENT, Growsurf::Campaign::ReferralStatus::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Growsurf::Campaign::ReferralStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
