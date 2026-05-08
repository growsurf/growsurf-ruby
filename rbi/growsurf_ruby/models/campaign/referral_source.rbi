# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      module ReferralSource
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, GrowsurfRuby::Campaign::ReferralSource) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DIRECT =
          T.let(:DIRECT, GrowsurfRuby::Campaign::ReferralSource::TaggedSymbol)
        PARTICIPANT =
          T.let(
            :PARTICIPANT,
            GrowsurfRuby::Campaign::ReferralSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[GrowsurfRuby::Campaign::ReferralSource::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
