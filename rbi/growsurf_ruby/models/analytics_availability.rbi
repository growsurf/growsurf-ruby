# typed: strong

module GrowsurfRuby
  module Models
    module AnalyticsAvailability
      extend GrowsurfRuby::Internal::Type::Enum

      OrSymbol = T.type_alias { T.any(Symbol, String) }

      AVAILABLE = T.let(:AVAILABLE, Symbol)
      PARTIAL = T.let(:PARTIAL, Symbol)
      UNAVAILABLE = T.let(:UNAVAILABLE, Symbol)

      sig { override.returns(T::Array[Symbol]) }
      def self.values
      end
    end
  end
end
