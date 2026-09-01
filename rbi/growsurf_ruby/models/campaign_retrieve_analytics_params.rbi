# typed: strong

module GrowsurfRuby
  module Models
    class CampaignRetrieveAnalyticsParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CampaignRetrieveAnalyticsParams,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Last number of days to retrieve analytics for. Defaults to 365. Maximum 1825.
      sig { returns(T.nilable(Integer)) }
      attr_reader :days

      sig { params(days: Integer).void }
      attr_writer :days

      # End date of the analytics timeframe as a Unix timestamp in milliseconds.
      # Required if `days` is not set.
      sig { returns(T.nilable(Integer)) }
      attr_reader :end_date

      sig { params(end_date: Integer).void }
      attr_writer :end_date

      # Comma-separated list of optional data to include: `previousPeriod` adds totals for the
      # equal-length window immediately before the requested one; `statusCounts` adds reward (and,
      # for affiliate programs, affiliate/commission/payout) status breakdowns; `rates` adds
      # derived referral rates; `email` adds `sent`, `delivered`, `opened`, `clicked`, `bounced`,
      # `spamComplaints`, and per-email-type metrics. When `email` and an interval are both
      # requested, each `series` item also contains counts for emails sent during that period.
      # Combine `email` with `previousPeriod` to include the same email metrics in both windows.
      sig { returns(T.nilable(String)) }
      attr_reader :include

      sig { params(include: String).void }
      attr_writer :include

      # When set to `day`, `week`, or `month`, the response also includes a `series` array
      # with per-period totals and uses the same bucket size for `engagement.series`.
      # Defaults to `total` (no legacy series); `engagement.series` uses daily buckets when
      # `interval` is `total` or omitted.
      sig do
        returns(
          T.nilable(
            GrowsurfRuby::CampaignRetrieveAnalyticsParams::Interval::OrSymbol
          )
        )
      end
      attr_reader :interval

      sig do
        params(
          interval:
            GrowsurfRuby::CampaignRetrieveAnalyticsParams::Interval::OrSymbol
        ).void
      end
      attr_writer :interval

      sig do
        returns(
          T.nilable(
            GrowsurfRuby::CampaignRetrieveAnalyticsParams::Platform::OrSymbol
          )
        )
      end
      attr_reader :platform

      sig do
        params(
          platform:
            GrowsurfRuby::CampaignRetrieveAnalyticsParams::Platform::OrSymbol
        ).void
      end
      attr_writer :platform

      # Start date of the analytics timeframe as a Unix timestamp in milliseconds.
      # Required if `days` is not set.
      sig { returns(T.nilable(Integer)) }
      attr_reader :start_date

      sig { params(start_date: Integer).void }
      attr_writer :start_date

      sig { returns(T.nilable(String)) }
      attr_reader :timezone

      sig { params(timezone: String).void }
      attr_writer :timezone

      sig do
        params(
          id: String,
          days: Integer,
          end_date: Integer,
          include: String,
          interval:
            GrowsurfRuby::CampaignRetrieveAnalyticsParams::Interval::OrSymbol,
          platform:
            GrowsurfRuby::CampaignRetrieveAnalyticsParams::Platform::OrSymbol,
          start_date: Integer,
          timezone: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Last number of days to retrieve analytics for. Defaults to 365. Maximum 1825.
        days: nil,
        # End date of the analytics timeframe as a Unix timestamp in milliseconds.
        # Required if `days` is not set.
        end_date: nil,
        # Comma-separated list of optional data to include: `previousPeriod` adds totals for the
        # equal-length window immediately before the requested one; `statusCounts` adds reward
        # (and, for affiliate programs, affiliate/commission/payout) status breakdowns; `rates`
        # adds derived referral rates; `email` adds `sent`, `delivered`, `opened`, `clicked`,
        # `bounced`, `spamComplaints`, and per-email-type metrics. When `email` and an interval
        # are both requested, each `series` item also contains counts for emails sent during that
        # period. Combine `email` with `previousPeriod` to include the same email metrics in both
        # windows.
        include: nil,
        # When set to `day`, `week`, or `month`, the response also includes a `series` array
        # with per-period totals and uses the same bucket size for `engagement.series`.
        # Defaults to `total` (no legacy series); `engagement.series` uses daily buckets when
        # `interval` is `total` or omitted.
        interval: nil,
        # Participant platform used for `engagement`. Defaults to `ALL`.
        platform: nil,
        # Start date of the analytics timeframe as a Unix timestamp in milliseconds.
        # Required if `days` is not set.
        start_date: nil,
        # IANA timezone used for engagement periods and buckets. Defaults to `UTC`.
        timezone: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            days: Integer,
            end_date: Integer,
            include: String,
            interval:
              GrowsurfRuby::CampaignRetrieveAnalyticsParams::Interval::OrSymbol,
            platform:
              GrowsurfRuby::CampaignRetrieveAnalyticsParams::Platform::OrSymbol,
            start_date: Integer,
            timezone: String,
            request_options: GrowsurfRuby::RequestOptions
          }
        )
      end
      def to_hash
      end

      # When set to `day`, `week`, or `month`, the response also includes a `series` array
      # with per-period totals and uses the same bucket size for `engagement.series`.
      # Defaults to `total` (no legacy series); `engagement.series` uses daily buckets when
      # `interval` is `total` or omitted.
      module Interval
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              GrowsurfRuby::CampaignRetrieveAnalyticsParams::Interval
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAY =
          T.let(
            :day,
            GrowsurfRuby::CampaignRetrieveAnalyticsParams::Interval::TaggedSymbol
          )
        WEEK =
          T.let(
            :week,
            GrowsurfRuby::CampaignRetrieveAnalyticsParams::Interval::TaggedSymbol
          )
        MONTH =
          T.let(
            :month,
            GrowsurfRuby::CampaignRetrieveAnalyticsParams::Interval::TaggedSymbol
          )
        TOTAL =
          T.let(
            :total,
            GrowsurfRuby::CampaignRetrieveAnalyticsParams::Interval::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              GrowsurfRuby::CampaignRetrieveAnalyticsParams::Interval::TaggedSymbol
            ]
          )
        end
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
    end
  end
end
