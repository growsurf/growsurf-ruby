# typed: strong

module Growsurf
  module Models
    module Campaign
      module FraudRiskLevel
        extend Growsurf::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Growsurf::Campaign::FraudRiskLevel) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW = T.let(:LOW, Growsurf::Campaign::FraudRiskLevel::TaggedSymbol)
        MEDIUM =
          T.let(:MEDIUM, Growsurf::Campaign::FraudRiskLevel::TaggedSymbol)
        HIGH = T.let(:HIGH, Growsurf::Campaign::FraudRiskLevel::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Growsurf::Campaign::FraudRiskLevel::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
