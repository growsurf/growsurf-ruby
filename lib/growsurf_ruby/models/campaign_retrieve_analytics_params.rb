# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#retrieve_analytics
    class CampaignRetrieveAnalyticsParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute days
      #   Last number of days to retrieve analytics for. Defaults to 365. Maximum 1825.
      #
      #   @return [Integer, nil]
      optional :days, Integer

      # @!attribute end_date
      #   End date of the analytics timeframe as a Unix timestamp in milliseconds.
      #   Required if `days` is not set.
      #
      #   @return [Integer, nil]
      optional :end_date, Integer

      # @!attribute include
      #   Comma-separated list of optional data to include: `previousPeriod` adds totals for
      #   the equal-length window immediately before the requested one; `statusCounts` adds
      #   reward (and, for affiliate programs, affiliate/commission/payout) status breakdowns;
      #   `rates` adds derived referral rates; `email` adds `sent`, `delivered`, `opened`,
      #   `clicked`, `bounced`, `spamComplaints`, and per-email-type metrics. When `email` and
      #   an interval are both requested, each `series` item also contains counts for emails
      #   sent during that period. Combine `email` with `previousPeriod` to include the same
      #   email metrics in both windows. `engagement` adds covered participant activity
      #   totals, comparisons, series, and breakdowns.
      #
      #   @return [String, nil]
      optional :include, String

      # @!attribute interval
      #   When set to `day`, `week`, or `month`, the response also includes a `series` array
      #   with per-period totals and uses the same bucket size for `engagement.series`.
      #   Defaults to `total` (no legacy series); `engagement.series` uses daily buckets when
      #   `interval` is `total` or omitted.
      #
      #   @return [Symbol, GrowsurfRuby::Models::CampaignRetrieveAnalyticsParams::Interval, nil]
      optional :interval, enum: -> { GrowsurfRuby::CampaignRetrieveAnalyticsParams::Interval }

      # @!attribute platform
      #   Participant platform used for `engagement`. Defaults to `ALL`.
      #
      #   @return [Symbol, GrowsurfRuby::Models::CampaignRetrieveAnalyticsParams::Platform, nil]
      optional :platform, enum: -> { GrowsurfRuby::Models::CampaignRetrieveAnalyticsParams::Platform }

      # @!attribute start_date
      #   Start date of the analytics timeframe as a Unix timestamp in milliseconds.
      #   Required if `days` is not set.
      #
      #   @return [Integer, nil]
      optional :start_date, Integer

      # @!attribute timezone
      #   IANA timezone used for engagement periods and buckets. Defaults to `UTC`.
      #
      #   @return [String, nil]
      optional :timezone, String

      # @!method initialize(id:, days: nil, end_date: nil, include: nil, interval: nil, platform: nil, start_date: nil, timezone: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {GrowsurfRuby::Models::CampaignRetrieveAnalyticsParams} for more details.
      #
      #   @param id [String]
      #
      #   @param days [Integer] Last number of days to retrieve analytics for. Defaults to 365. Maximum 1825.
      #
      #   @param end_date [Integer] End date of the analytics timeframe as a Unix timestamp in milliseconds. Require
      #
      #   @param include [String] Comma-separated list of optional data to include: `previousPeriod` adds totals for
      #
      #   @param interval [Symbol, GrowsurfRuby::Models::CampaignRetrieveAnalyticsParams::Interval] When set to `day`, `week`, or `month`, the response also includes a `series` array
      #
      #   @param platform [Symbol, GrowsurfRuby::Models::CampaignRetrieveAnalyticsParams::Platform] Participant platform used for `engagement`. Defaults to `ALL`.
      #
      #   @param start_date [Integer] Start date of the analytics timeframe as a Unix timestamp in milliseconds. Requi
      #
      #   @param timezone [String] IANA timezone used for engagement periods and buckets. Defaults to `UTC`.
      #
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

      # When set to `day`, `week`, or `month`, the response also includes a `series` array
      # with per-period totals and uses the same bucket size for `engagement.series`.
      # Defaults to `total` (no legacy series); `engagement.series` uses daily buckets when
      # `interval` is `total` or omitted.
      module Interval
        extend GrowsurfRuby::Internal::Type::Enum

        DAY = :day
        WEEK = :week
        MONTH = :month
        TOTAL = :total

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Platform
        extend GrowsurfRuby::Internal::Type::Enum

        ALL = :ALL
        WEB = :WEB
        IOS = :IOS
        ANDROID = :ANDROID

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
