# typed: strong

module Growsurf
  module Models
    module Campaign
      module ReferralSource
        extend Growsurf::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Growsurf::Campaign::ReferralSource) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DIRECT =
          T.let(:DIRECT, Growsurf::Campaign::ReferralSource::TaggedSymbol)
        PARTICIPANT =
          T.let(:PARTICIPANT, Growsurf::Campaign::ReferralSource::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Growsurf::Campaign::ReferralSource::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
