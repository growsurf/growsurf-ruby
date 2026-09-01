# typed: strong

module GrowsurfRuby
  module Models
    class CampaignEngagementAnalytics < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::CampaignEngagementAnalytics,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Integer)) }
      attr_accessor :coverage_start_at

      sig { returns(Integer) }
      attr_accessor :metric_contract_version

      sig { returns(ProgramType::OrSymbol) }
      attr_accessor :program_type

      sig { returns(String) }
      attr_accessor :timezone

      sig { returns(Interval::OrSymbol) }
      attr_accessor :interval

      sig { returns(PlatformFilter) }
      attr_accessor :platform

      sig { returns(Period) }
      attr_accessor :period

      sig { returns(GrowsurfRuby::Models::AnalyticsAvailability::OrSymbol) }
      attr_accessor :state

      sig do
        returns(
          T.nilable(GrowsurfRuby::Models::AnalyticsUnavailableReason::OrSymbol)
        )
      end
      attr_accessor :reason

      sig { returns(Totals) }
      attr_accessor :totals

      sig { returns(PreviousPeriod) }
      attr_accessor :previous_period

      sig { returns(Comparison) }
      attr_accessor :comparison

      sig { returns(T::Array[SeriesPoint]) }
      attr_accessor :series

      sig { returns(Breakdowns) }
      attr_accessor :breakdowns

      sig { params(kwargs: T.untyped).returns(T.attached_class) }
      def self.new(**kwargs)
      end

      module ProgramType
        extend GrowsurfRuby::Internal::Type::Enum

        OrSymbol = T.type_alias { T.any(Symbol, String) }
        REFERRAL = T.let(:REFERRAL, Symbol)
        AFFILIATE = T.let(:AFFILIATE, Symbol)
        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      module Interval
        extend GrowsurfRuby::Internal::Type::Enum

        OrSymbol = T.type_alias { T.any(Symbol, String) }
        DAY = T.let(:day, Symbol)
        WEEK = T.let(:week, Symbol)
        MONTH = T.let(:month, Symbol)
        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      module Platform
        extend GrowsurfRuby::Internal::Type::Enum

        OrSymbol = T.type_alias { T.any(Symbol, String) }
        ALL = T.let(:ALL, Symbol)
        WEB = T.let(:WEB, Symbol)
        IOS = T.let(:IOS, Symbol)
        ANDROID = T.let(:ANDROID, Symbol)
        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      module BreakdownPlatform
        extend GrowsurfRuby::Internal::Type::Enum

        OrSymbol = T.type_alias { T.any(Symbol, String) }
        WEB = T.let(:WEB, Symbol)
        IOS = T.let(:IOS, Symbol)
        ANDROID = T.let(:ANDROID, Symbol)
        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      module PortalSource
        extend GrowsurfRuby::Internal::Type::Enum

        OrSymbol = T.type_alias { T.any(Symbol, String) }
        DEFAULT_LAUNCHER = T.let(:DEFAULT_LAUNCHER, Symbol)
        SDK_OPEN = T.let(:SDK_OPEN, Symbol)
        CSS_CLASS = T.let(:CSS_CLASS, Symbol)
        HOSTED_PORTAL = T.let(:HOSTED_PORTAL, Symbol)
        NATIVE_WINDOW = T.let(:NATIVE_WINDOW, Symbol)
        UNKNOWN = T.let(:UNKNOWN, Symbol)
        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Metric < GrowsurfRuby::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(Metric, GrowsurfRuby::Internal::AnyHash) }
        sig { returns(GrowsurfRuby::Models::AnalyticsAvailability::OrSymbol) }
        attr_accessor :state

        sig { returns(T.nilable(Float)) }
        attr_accessor :value

        sig do
          returns(
            T.nilable(
              GrowsurfRuby::Models::AnalyticsUnavailableReason::OrSymbol
            )
          )
        end
        attr_accessor :reason

        sig { returns(T.nilable(Float)) }
        attr_accessor :delta

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class Totals < GrowsurfRuby::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(Totals, GrowsurfRuby::Internal::AnyHash) }
        sig { returns(Metric) }
        attr_accessor :active_participants,
                      :sharing_participants,
                      :sharing_rate,
                      :repeat_active_participants,
                      :repeat_sharing_participants,
                      :retained_active_participants,
                      :portal_views,
                      :share_actions

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class Period < GrowsurfRuby::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(Period, GrowsurfRuby::Internal::AnyHash) }
        sig { returns(Integer) }
        attr_accessor :from, :to, :previous_from, :previous_to

        sig { returns(T.nilable(Integer)) }
        attr_accessor :effective_from

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class PlatformFilter < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(PlatformFilter, GrowsurfRuby::Internal::AnyHash)
          end
        sig { returns(Platform::OrSymbol) }
        attr_accessor :requested, :applied

        sig { returns(GrowsurfRuby::Models::AnalyticsAvailability::OrSymbol) }
        attr_accessor :state

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class PreviousPeriod < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(PreviousPeriod, GrowsurfRuby::Internal::AnyHash)
          end
        sig { returns(GrowsurfRuby::Models::AnalyticsAvailability::OrSymbol) }
        attr_accessor :state

        sig do
          returns(
            T.nilable(
              GrowsurfRuby::Models::AnalyticsUnavailableReason::OrSymbol
            )
          )
        end
        attr_accessor :reason

        sig { returns(T.nilable(Totals)) }
        attr_accessor :totals

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class ComparisonMetrics < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(ComparisonMetrics, GrowsurfRuby::Internal::AnyHash)
          end
        sig { returns(T.nilable(Metric)) }
        attr_accessor :active_participants,
                      :sharing_participants,
                      :repeat_active_participants,
                      :repeat_sharing_participants,
                      :portal_views,
                      :share_actions

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class Comparison < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Comparison, GrowsurfRuby::Internal::AnyHash) }
        sig { returns(GrowsurfRuby::Models::AnalyticsAvailability::OrSymbol) }
        attr_accessor :state

        sig do
          returns(
            T.nilable(
              GrowsurfRuby::Models::AnalyticsUnavailableReason::OrSymbol
            )
          )
        end
        attr_accessor :reason

        sig { returns(T.nilable(ComparisonMetrics)) }
        attr_accessor :metrics

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class SeriesPoint < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(SeriesPoint, GrowsurfRuby::Internal::AnyHash) }
        sig { returns(Integer) }
        attr_accessor :from,
                      :to,
                      :active_participants,
                      :sharing_participants,
                      :portal_views,
                      :share_actions

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class PlatformBreakdown < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(PlatformBreakdown, GrowsurfRuby::Internal::AnyHash)
          end
        sig { returns(BreakdownPlatform::OrSymbol) }
        attr_accessor :key

        sig { returns(Integer) }
        attr_accessor :active_participants,
                      :sharing_participants,
                      :portal_views,
                      :share_actions

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class PortalSourceBreakdown < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(PortalSourceBreakdown, GrowsurfRuby::Internal::AnyHash)
          end
        sig { returns(PortalSource::OrSymbol) }
        attr_accessor :key

        sig { returns(Integer) }
        attr_accessor :active_participants, :portal_views

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class ShareChannelBreakdown < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(ShareChannelBreakdown, GrowsurfRuby::Internal::AnyHash)
          end
        sig { returns(String) }
        attr_accessor :key

        sig { returns(Integer) }
        attr_accessor :sharing_participants, :share_actions

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class FirstShareChannelBreakdown < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(FirstShareChannelBreakdown, GrowsurfRuby::Internal::AnyHash)
          end
        sig { returns(String) }
        attr_accessor :key

        sig { returns(Integer) }
        attr_accessor :sharing_participants

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class Breakdowns < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Breakdowns, GrowsurfRuby::Internal::AnyHash) }
        sig { returns(T::Array[PlatformBreakdown]) }
        attr_accessor :platforms

        sig { returns(T::Array[PortalSourceBreakdown]) }
        attr_accessor :portal_view_sources

        sig { returns(T::Array[ShareChannelBreakdown]) }
        attr_accessor :share_channels

        sig { returns(T::Array[FirstShareChannelBreakdown]) }
        attr_accessor :first_share_channels

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end
    end
  end
end
