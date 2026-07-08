# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantRetrieveAnalyticsParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :participant_id_or_email

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

        # Set to `series` to also return this participant's own activity per period.
        sig do
          returns(
            T.nilable(
              GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Include::OrSymbol
            )
          )
        end
        attr_reader :include

        sig do
          params(
            include:
              GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Include::OrSymbol
          ).void
        end
        attr_writer :include

        # Bucket size for the `series` (only used with `include=series`). Defaults to `day`.
        sig do
          returns(
            T.nilable(
              GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Interval::OrSymbol
            )
          )
        end
        attr_reader :interval

        sig do
          params(
            interval:
              GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Interval::OrSymbol
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
            participant_id_or_email: String,
            days: Integer,
            end_date: Integer,
            include:
              GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Include::OrSymbol,
            interval:
              GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Interval::OrSymbol,
            start_date: Integer,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          participant_id_or_email:,
          # Last number of days to retrieve analytics for. Defaults to 365. Maximum 1825.
          days: nil,
          # End date of the analytics timeframe as a Unix timestamp in milliseconds.
          # Required if `days` is not set.
          end_date: nil,
          # Set to `series` to also return this participant's own activity per period.
          include: nil,
          # Bucket size for the `series` (only used with `include=series`). Defaults to `day`.
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
              participant_id_or_email: String,
              days: Integer,
              end_date: Integer,
              include:
                GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Include::OrSymbol,
              interval:
                GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Interval::OrSymbol,
              start_date: Integer,
              request_options: GrowsurfRuby::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Set to `series` to also return this participant's own activity per period.
        module Include
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Include
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SERIES =
            T.let(
              :series,
              GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Include::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Include::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Bucket size for the `series` (only used with `include=series`). Defaults to `day`.
        module Interval
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Interval
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAY =
            T.let(
              :day,
              GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Interval::TaggedSymbol
            )
          WEEK =
            T.let(
              :week,
              GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Interval::TaggedSymbol
            )
          MONTH =
            T.let(
              :month,
              GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Interval::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Interval::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
