# typed: strong

module GrowsurfRuby
  module Models
    class CampaignRetrieveActivationAnalyticsParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CampaignRetrieveActivationAnalyticsParams,
            GrowsurfRuby::Internal::AnyHash
          )
        end
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :cohort_from, :cohort_to

      sig { returns(T.nilable(CohortInterval::OrSymbol)) }
      attr_accessor :cohort_interval

      sig { returns(T.nilable(ObservationWindowDays::OrInteger)) }
      attr_accessor :observation_window_days

      sig { returns(T.nilable(String)) }
      attr_accessor :timezone

      sig { params(kwargs: T.untyped).returns(T.attached_class) }
      def self.new(**kwargs)
      end

      module CohortInterval
        extend GrowsurfRuby::Internal::Type::Enum

        OrSymbol = T.type_alias { T.any(Symbol, String) }
        DAY = T.let(:day, Symbol)
        WEEK = T.let(:week, Symbol)
        MONTH = T.let(:month, Symbol)
        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      module ObservationWindowDays
        extend GrowsurfRuby::Internal::Type::Enum

        OrInteger = T.type_alias { Integer }
        SEVEN = T.let(7, Integer)
        THIRTY = T.let(30, Integer)
        sig { override.returns(T::Array[Integer]) }
        def self.values
        end
      end
    end
  end
end
