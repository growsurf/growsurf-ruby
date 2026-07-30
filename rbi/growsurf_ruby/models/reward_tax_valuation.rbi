# typed: strong

module GrowsurfRuby
  module Models
    # Tax valuation settings for a reward. Only relevant when the program collects
    # tax documentation.
    class RewardTaxValuation < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::RewardTaxValuation,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      # Manual fair-market value in USD (major units) used as the fallback when the
      # reward value cannot be resolved automatically. `null` = no manual value.
      sig { returns(T.nilable(Float)) }
      attr_accessor :fair_market_value_usd

      # The reason the recipient earns this reward. `null` inherits the program's
      # confirmed tax treatment for configurable non-commission rewards. Commission
      # rewards always use `NONEMPLOYEE_SERVICES`.
      sig do
        returns(
          T.nilable(GrowsurfRuby::RewardTaxValuation::TaxCharacter::OrSymbol)
        )
      end
      attr_accessor :tax_character

      # Tax valuation settings for a reward. Only relevant when the program collects
      # tax documentation.
      sig do
        params(
          fair_market_value_usd: T.nilable(Float),
          tax_character:
            T.nilable(GrowsurfRuby::RewardTaxValuation::TaxCharacter::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # Manual fair-market value in USD (major units) used as the fallback when the
        # reward value cannot be resolved automatically. `null` = no manual value.
        fair_market_value_usd: nil,
        # The reason the recipient earns this reward. `null` inherits the program's
        # confirmed tax treatment for configurable non-commission rewards. Commission
        # rewards always use `NONEMPLOYEE_SERVICES`.
        tax_character: nil
      )
      end

      sig do
        override.returns(
          {
            fair_market_value_usd: T.nilable(Float),
            tax_character:
              T.nilable(
                GrowsurfRuby::RewardTaxValuation::TaxCharacter::OrSymbol
              )
          }
        )
      end
      def to_hash
      end

      # The U.S. federal tax character of a reward.
      module TaxCharacter
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, GrowsurfRuby::RewardTaxValuation::TaxCharacter)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONEMPLOYEE_SERVICES =
          T.let(
            :NONEMPLOYEE_SERVICES,
            GrowsurfRuby::RewardTaxValuation::TaxCharacter::TaggedSymbol
          )
        PRIZE_OR_AWARD =
          T.let(
            :PRIZE_OR_AWARD,
            GrowsurfRuby::RewardTaxValuation::TaxCharacter::TaggedSymbol
          )
        PURCHASE_REBATE =
          T.let(
            :PURCHASE_REBATE,
            GrowsurfRuby::RewardTaxValuation::TaxCharacter::TaggedSymbol
          )
        OTHER_INCOME =
          T.let(
            :OTHER_INCOME,
            GrowsurfRuby::RewardTaxValuation::TaxCharacter::TaggedSymbol
          )
        REVIEW_REQUIRED =
          T.let(
            :REVIEW_REQUIRED,
            GrowsurfRuby::RewardTaxValuation::TaxCharacter::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              GrowsurfRuby::RewardTaxValuation::TaxCharacter::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
