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

      # Comma-separated list of optional enrichments (opt-in to keep the default response
      # lean): `previousPeriod` adds totals for the equal-length window immediately before
      # the requested one; `statusCounts` adds reward (and, for affiliate programs,
      # affiliate/commission/payout) status breakdowns; `rates` adds derived referral
      # rates.
      sig { returns(T.nilable(String)) }
      attr_reader :include

      sig { params(include: String).void }
      attr_writer :include

      # When set to `day`, `week`, or `month`, the response also includes a `series` array
      # with per-period totals. Defaults to `total` (no series).
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

      # Start date of the analytics timeframe as a Unix timestamp in milliseconds.
      # Required if `days` is not set.
      sig { returns(T.nilable(Integer)) }
      attr_reader :start_date

      sig { params(start_date: Integer).void }
      attr_writer :start_date

      sig do
        params(
          id: String,
          days: Integer,
          end_date: Integer,
          include: String,
          interval:
            GrowsurfRuby::CampaignRetrieveAnalyticsParams::Interval::OrSymbol,
          start_date: Integer,
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
        # Comma-separated list of optional enrichments (opt-in to keep the default response
        # lean): `previousPeriod` adds totals for the equal-length window immediately before
        # the requested one; `statusCounts` adds reward (and, for affiliate programs,
        # affiliate/commission/payout) status breakdowns; `rates` adds derived referral
        # rates.
        include: nil,
        # When set to `day`, `week`, or `month`, the response also includes a `series` array
        # with per-period totals. Defaults to `total` (no series).
        interval: nil,
        # Start date of the analytics timeframe as a Unix timestamp in milliseconds.
        # Required if `days` is not set.
        start_date: nil,
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
            start_date: Integer,
            request_options: GrowsurfRuby::RequestOptions
          }
        )
      end
      def to_hash
      end

      # When set to `day`, `week`, or `month`, the response also includes a `series` array
      # with per-period totals. Defaults to `total` (no series).
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
    end
  end
end
