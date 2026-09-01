# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module AnalyticsAvailability
      extend GrowsurfRuby::Internal::Type::Enum

      AVAILABLE = :AVAILABLE
      PARTIAL = :PARTIAL
      UNAVAILABLE = :UNAVAILABLE

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
