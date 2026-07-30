# frozen_string_literal: true

module GrowsurfRuby
  module Models
    class RewardTaxValuation < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute fair_market_value_usd
      #   Manual fair-market value in USD (major units) used as the fallback when the
      #   reward value cannot be resolved automatically. `null` = no manual value.
      #
      #   @return [Float, nil]
      optional :fair_market_value_usd, Float, api_name: :fairMarketValueUSD, nil?: true

      # @!attribute tax_character
      #   The reason the recipient earns this reward. `null` inherits the program's
      #   confirmed tax treatment for configurable non-commission rewards. Commission
      #   rewards always use `NONEMPLOYEE_SERVICES`.
      #
      #   @return [Symbol, GrowsurfRuby::Models::RewardTaxValuation::TaxCharacter, nil]
      optional :tax_character,
               enum: -> { GrowsurfRuby::RewardTaxValuation::TaxCharacter },
               api_name: :taxCharacter,
               nil?: true

      # @!method initialize(fair_market_value_usd: nil, tax_character: nil)
      #   Some parameter documentations has been truncated, see
      #   {GrowsurfRuby::Models::RewardTaxValuation} for more details.
      #
      #   Tax valuation settings for a reward. Only relevant when the program collects
      #   tax documentation.
      #
      #   @param fair_market_value_usd [Float, nil] Manual fair-market value in USD (major units) used as the fallback when the rewa
      #
      #   @param tax_character [Symbol, GrowsurfRuby::Models::RewardTaxValuation::TaxCharacter, nil] The reason the recipient earns this reward. `null` inherits the program's

      # The U.S. federal tax character of a reward.
      module TaxCharacter
        extend GrowsurfRuby::Internal::Type::Enum

        NONEMPLOYEE_SERVICES = :NONEMPLOYEE_SERVICES
        PRIZE_OR_AWARD = :PRIZE_OR_AWARD
        PURCHASE_REBATE = :PURCHASE_REBATE
        OTHER_INCOME = :OTHER_INCOME
        REVIEW_REQUIRED = :REVIEW_REQUIRED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
