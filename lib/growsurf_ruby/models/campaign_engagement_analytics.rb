# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # Current participant engagement for the selected program, period, and platform.
    class CampaignEngagementAnalytics < GrowsurfRuby::Internal::Type::BaseModel
      required :coverage_start_at, Integer, api_name: :coverageStartAt, nil?: true
      required :metric_contract_version, Integer, api_name: :metricContractVersion
      required :program_type, enum: -> { GrowsurfRuby::Models::CampaignEngagementAnalytics::ProgramType }, api_name: :programType
      required :timezone, String
      required :interval, enum: -> { GrowsurfRuby::Models::CampaignEngagementAnalytics::Interval }
      required :platform, -> { GrowsurfRuby::Models::CampaignEngagementAnalytics::PlatformFilter }
      required :period, -> { GrowsurfRuby::Models::CampaignEngagementAnalytics::Period }
      required :state, enum: -> { GrowsurfRuby::Models::AnalyticsAvailability }
      required :reason, enum: -> { GrowsurfRuby::Models::AnalyticsUnavailableReason }, nil?: true
      required :totals, -> { GrowsurfRuby::Models::CampaignEngagementAnalytics::Totals }
      required :previous_period,
               -> { GrowsurfRuby::Models::CampaignEngagementAnalytics::PreviousPeriod },
               api_name: :previousPeriod
      required :comparison, -> { GrowsurfRuby::Models::CampaignEngagementAnalytics::Comparison }
      required :series,
               -> {
                 GrowsurfRuby::Internal::Type::ArrayOf[
                   GrowsurfRuby::Models::CampaignEngagementAnalytics::SeriesPoint
                 ]
               }
      required :breakdowns, -> { GrowsurfRuby::Models::CampaignEngagementAnalytics::Breakdowns }

      module ProgramType
        extend GrowsurfRuby::Internal::Type::Enum

        REFERRAL = :REFERRAL
        AFFILIATE = :AFFILIATE
      end

      module Interval
        extend GrowsurfRuby::Internal::Type::Enum

        DAY = :day
        WEEK = :week
        MONTH = :month
      end

      module Platform
        extend GrowsurfRuby::Internal::Type::Enum

        ALL = :ALL
        WEB = :WEB
        IOS = :IOS
        ANDROID = :ANDROID
      end

      module BreakdownPlatform
        extend GrowsurfRuby::Internal::Type::Enum

        WEB = :WEB
        IOS = :IOS
        ANDROID = :ANDROID
      end

      class Metric < GrowsurfRuby::Internal::Type::BaseModel
        required :state, enum: -> { GrowsurfRuby::Models::AnalyticsAvailability }
        required :value, Float, nil?: true
        required :reason, enum: -> { GrowsurfRuby::Models::AnalyticsUnavailableReason }, nil?: true
        optional :delta, Float
      end

      class Totals < GrowsurfRuby::Internal::Type::BaseModel
        required :active_participants, -> { Metric }, api_name: :activeParticipants
        required :sharing_participants, -> { Metric }, api_name: :sharingParticipants
        required :sharing_rate, -> { Metric }, api_name: :sharingRate
        required :repeat_active_participants, -> { Metric }, api_name: :repeatActiveParticipants
        required :repeat_sharing_participants, -> { Metric }, api_name: :repeatSharingParticipants
        required :retained_active_participants, -> { Metric }, api_name: :retainedActiveParticipants
        required :portal_views, -> { Metric }, api_name: :portalViews
        required :share_actions, -> { Metric }, api_name: :shareActions
      end

      class Period < GrowsurfRuby::Internal::Type::BaseModel
        required :from, Integer
        required :to, Integer
        required :effective_from, Integer, api_name: :effectiveFrom, nil?: true
        required :previous_from, Integer, api_name: :previousFrom
        required :previous_to, Integer, api_name: :previousTo
      end

      class PlatformFilter < GrowsurfRuby::Internal::Type::BaseModel
        required :requested, enum: -> { Platform }
        required :applied, enum: -> { Platform }
        required :state, enum: -> { GrowsurfRuby::Models::AnalyticsAvailability }
      end

      class PreviousPeriod < GrowsurfRuby::Internal::Type::BaseModel
        required :state, enum: -> { GrowsurfRuby::Models::AnalyticsAvailability }
        required :reason, enum: -> { GrowsurfRuby::Models::AnalyticsUnavailableReason }, nil?: true
        required :totals, -> { Totals }, nil?: true
      end

      class ComparisonMetrics < GrowsurfRuby::Internal::Type::BaseModel
        optional :active_participants, -> { Metric }, api_name: :activeParticipants
        optional :sharing_participants, -> { Metric }, api_name: :sharingParticipants
        optional :repeat_active_participants, -> { Metric }, api_name: :repeatActiveParticipants
        optional :repeat_sharing_participants, -> { Metric }, api_name: :repeatSharingParticipants
        optional :portal_views, -> { Metric }, api_name: :portalViews
        optional :share_actions, -> { Metric }, api_name: :shareActions
      end

      class Comparison < GrowsurfRuby::Internal::Type::BaseModel
        required :state, enum: -> { GrowsurfRuby::Models::AnalyticsAvailability }
        required :reason, enum: -> { GrowsurfRuby::Models::AnalyticsUnavailableReason }, nil?: true
        required :metrics, -> { ComparisonMetrics }, nil?: true
      end

      class SeriesPoint < GrowsurfRuby::Internal::Type::BaseModel
        required :from, Integer
        required :to, Integer
        required :active_participants, Integer, api_name: :activeParticipants
        required :sharing_participants, Integer, api_name: :sharingParticipants
        required :portal_views, Integer, api_name: :portalViews
        required :share_actions, Integer, api_name: :shareActions
      end

      class PlatformBreakdown < GrowsurfRuby::Internal::Type::BaseModel
        required :key, enum: -> { BreakdownPlatform }
        required :active_participants, Integer, api_name: :activeParticipants
        required :sharing_participants, Integer, api_name: :sharingParticipants
        required :portal_views, Integer, api_name: :portalViews
        required :share_actions, Integer, api_name: :shareActions
      end

      module PortalSource
        extend GrowsurfRuby::Internal::Type::Enum

        DEFAULT_LAUNCHER = :DEFAULT_LAUNCHER
        SDK_OPEN = :SDK_OPEN
        CSS_CLASS = :CSS_CLASS
        EMBEDDABLE_ELEMENT = :EMBEDDABLE_ELEMENT
        HOSTED_PORTAL = :HOSTED_PORTAL
        NATIVE_WINDOW = :NATIVE_WINDOW
        UNKNOWN = :UNKNOWN
      end

      class PortalSourceBreakdown < GrowsurfRuby::Internal::Type::BaseModel
        required :key, enum: -> { PortalSource }
        required :active_participants, Integer, api_name: :activeParticipants
        required :portal_views, Integer, api_name: :portalViews
      end

      class ShareChannelBreakdown < GrowsurfRuby::Internal::Type::BaseModel
        required :key, String
        required :sharing_participants, Integer, api_name: :sharingParticipants
        required :share_actions, Integer, api_name: :shareActions
      end

      class FirstShareChannelBreakdown < GrowsurfRuby::Internal::Type::BaseModel
        required :key, String
        required :sharing_participants, Integer, api_name: :sharingParticipants
      end

      class Breakdowns < GrowsurfRuby::Internal::Type::BaseModel
        required :platforms, -> { GrowsurfRuby::Internal::Type::ArrayOf[PlatformBreakdown] }
        required :portal_view_sources,
                 -> { GrowsurfRuby::Internal::Type::ArrayOf[PortalSourceBreakdown] },
                 api_name: :portalViewSources
        required :share_channels,
                 -> { GrowsurfRuby::Internal::Type::ArrayOf[ShareChannelBreakdown] },
                 api_name: :shareChannels
        required :first_share_channels,
                 -> { GrowsurfRuby::Internal::Type::ArrayOf[FirstShareChannelBreakdown] },
                 api_name: :firstShareChannels
      end
    end
  end
end
