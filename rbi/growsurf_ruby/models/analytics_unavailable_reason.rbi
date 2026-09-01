# typed: strong

module GrowsurfRuby
  module Models
    module AnalyticsUnavailableReason
      extend GrowsurfRuby::Internal::Type::Enum

      OrSymbol = T.type_alias { T.any(Symbol, String) }

      COVERAGE_UNAVAILABLE = T.let(:COVERAGE_UNAVAILABLE, Symbol)
      PRE_COVERAGE = T.let(:PRE_COVERAGE, Symbol)
      PARTIAL_COVERAGE = T.let(:PARTIAL_COVERAGE, Symbol)
      INSUFFICIENT_COVERAGE = T.let(:INSUFFICIENT_COVERAGE, Symbol)
      EMPTY_DENOMINATOR = T.let(:EMPTY_DENOMINATOR, Symbol)
      QUERY_LIMIT_EXCEEDED = T.let(:QUERY_LIMIT_EXCEEDED, Symbol)
      PARTICIPANT_NOT_ELIGIBLE = T.let(:PARTICIPANT_NOT_ELIGIBLE, Symbol)

      sig { override.returns(T::Array[Symbol]) }
      def self.values
      end
    end
  end
end
