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

      # @!attribute is_tax_reportable
      #   Whether the reward's value counts toward 1099 thresholds/totals. `null` = use
      #   the smart default for the reward's source.
      #
      #   @return [Boolean, nil]
      optional :is_tax_reportable,
               GrowsurfRuby::Internal::Type::Boolean,
               api_name: :isTaxReportable,
               nil?: true

      # @!method initialize(fair_market_value_usd: nil, is_tax_reportable: nil)
      #   Some parameter documentations has been truncated, see
      #   {GrowsurfRuby::Models::RewardTaxValuation} for more details.
      #
      #   Tax valuation settings for a reward. Only relevant when the program collects
      #   tax documentation.
      #
      #   @param fair_market_value_usd [Float, nil] Manual fair-market value in USD (major units) used as the fallback when the rewa
      #
      #   @param is_tax_reportable [Boolean, nil] Whether the reward's value counts toward 1099 thresholds/totals. `null` = use th
    end
  end
end
