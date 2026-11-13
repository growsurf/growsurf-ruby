# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      # How a participant got into their group. `MANUAL` — a move (a `PARTICIPANT`
      # rule, Update participant, bulk move, or the dashboard), including a move to
      # Default. `LINK` — the group's signup link. `EMAIL` — an `EMAIL` rule.
      # `DOMAIN` — a `DOMAIN` rule.
      module RewardGroupSource
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, GrowsurfRuby::Campaign::RewardGroupSource) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANUAL =
          T.let(:MANUAL, GrowsurfRuby::Campaign::RewardGroupSource::TaggedSymbol)
        LINK =
          T.let(:LINK, GrowsurfRuby::Campaign::RewardGroupSource::TaggedSymbol)
        EMAIL =
          T.let(:EMAIL, GrowsurfRuby::Campaign::RewardGroupSource::TaggedSymbol)
        DOMAIN =
          T.let(:DOMAIN, GrowsurfRuby::Campaign::RewardGroupSource::TaggedSymbol)

        sig do
          override.returns(
            T::Array[GrowsurfRuby::Campaign::RewardGroupSource::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
