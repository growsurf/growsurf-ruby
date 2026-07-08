# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#retrieve_analytics
      class ParticipantRetrieveAnalyticsParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute participant_id_or_email
        #
        #   @return [String]
        required :participant_id_or_email, String

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
        #   Set to `series` to also return this participant's own activity per period.
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRetrieveAnalyticsParams::Include, nil]
        optional :include, enum: -> { GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Include }

        # @!attribute interval
        #   Bucket size for the `series` (only used with `include=series`). Defaults to `day`.
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRetrieveAnalyticsParams::Interval, nil]
        optional :interval, enum: -> { GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Interval }

        # @!attribute start_date
        #   Start date of the analytics timeframe as a Unix timestamp in milliseconds.
        #   Required if `days` is not set.
        #
        #   @return [Integer, nil]
        optional :start_date, Integer

        # @!method initialize(id:, participant_id_or_email:, days: nil, end_date: nil, include: nil, interval: nil, start_date: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::Campaign::ParticipantRetrieveAnalyticsParams} for more
        #   details.
        #
        #   @param id [String]
        #
        #   @param participant_id_or_email [String]
        #
        #   @param days [Integer] Last number of days to retrieve analytics for. Defaults to 365. Maximum 1825.
        #
        #   @param end_date [Integer] End date of the analytics timeframe as a Unix timestamp in milliseconds. Require
        #
        #   @param include [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRetrieveAnalyticsParams::Include] Set to `series` to also return this participant's own activity per period.
        #
        #   @param interval [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRetrieveAnalyticsParams::Interval] Bucket size for the `series` (only used with `include=series`). Defaults to `day`.
        #
        #   @param start_date [Integer] Start date of the analytics timeframe as a Unix timestamp in milliseconds. Requi
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

        # Set to `series` to also return this participant's own activity per period.
        module Include
          extend GrowsurfRuby::Internal::Type::Enum

          SERIES = :series

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Bucket size for the `series` (only used with `include=series`). Defaults to `day`.
        module Interval
          extend GrowsurfRuby::Internal::Type::Enum

          DAY = :day
          WEEK = :week
          MONTH = :month

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
