# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module AnalyticsUnavailableReason
      extend GrowsurfRuby::Internal::Type::Enum

      COVERAGE_UNAVAILABLE = :COVERAGE_UNAVAILABLE
      PRE_COVERAGE = :PRE_COVERAGE
      PARTIAL_COVERAGE = :PARTIAL_COVERAGE
      INSUFFICIENT_COVERAGE = :INSUFFICIENT_COVERAGE
      EMPTY_DENOMINATOR = :EMPTY_DENOMINATOR
      QUERY_LIMIT_EXCEEDED = :QUERY_LIMIT_EXCEEDED
      PARTICIPANT_NOT_ELIGIBLE = :PARTICIPANT_NOT_ELIGIBLE

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
