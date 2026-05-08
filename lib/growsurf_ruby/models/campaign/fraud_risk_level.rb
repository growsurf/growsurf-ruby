# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      module FraudRiskLevel
        extend GrowsurfRuby::Internal::Type::Enum

        LOW = :LOW
        MEDIUM = :MEDIUM
        HIGH = :HIGH

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
