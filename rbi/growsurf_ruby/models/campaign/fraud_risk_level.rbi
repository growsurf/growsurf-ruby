# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      module FraudRiskLevel
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, GrowsurfRuby::Campaign::FraudRiskLevel) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW = T.let(:LOW, GrowsurfRuby::Campaign::FraudRiskLevel::TaggedSymbol)
        MEDIUM =
          T.let(:MEDIUM, GrowsurfRuby::Campaign::FraudRiskLevel::TaggedSymbol)
        HIGH =
          T.let(:HIGH, GrowsurfRuby::Campaign::FraudRiskLevel::TaggedSymbol)

        sig do
          override.returns(
            T::Array[GrowsurfRuby::Campaign::FraudRiskLevel::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
