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

      # Whether the reward's value counts toward 1099 thresholds/totals. `null` = use
      # the smart default for the reward's source.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_tax_reportable

      # Tax valuation settings for a reward. Only relevant when the program collects
      # tax documentation.
      sig do
        params(
          fair_market_value_usd: T.nilable(Float),
          is_tax_reportable: T.nilable(T::Boolean)
        ).returns(T.attached_class)
      end
      def self.new(
        # Manual fair-market value in USD (major units) used as the fallback when the
        # reward value cannot be resolved automatically. `null` = no manual value.
        fair_market_value_usd: nil,
        # Whether the reward's value counts toward 1099 thresholds/totals. `null` = use
        # the smart default for the reward's source.
        is_tax_reportable: nil
      )
      end

      sig do
        override.returns(
          {
            fair_market_value_usd: T.nilable(Float),
            is_tax_reportable: T.nilable(T::Boolean)
          }
        )
      end
      def to_hash
      end
    end
  end
end
