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
        #   Last number of days for optional `series` and `email` analytics. Defaults to
        #   365. Maximum 1825. Does not filter the top-level all-time totals.
        #
        #   @return [Integer, nil]
        optional :days, Integer

        # @!attribute end_date
        #   End of a custom `series` and `email` analytics window as a Unix timestamp in
        #   milliseconds. Set it together with `startDate`. Does not filter the top-level
        #   all-time totals.
        #
        #   @return [Integer, nil]
        optional :end_date, Integer

        # @!attribute include
        #   Comma-separated optional data. `series` returns this participant's own activity
        #   per period; `email` returns `sent`, `delivered`, `opened`, `clicked`, `bounced`,
        #   `spamComplaints`, and per-email-type metrics attributed to the participant for
        #   the requested analytics window (including invitations they sent); `activation`
        #   returns the cohort anchor and covered first milestones. Request
        #   `activation,series` to add covered portal-view and share-action counts to every
        #   series item. Only documented tokens are accepted; an unknown token returns `400`.
        #
        #   @return [String, nil]
        optional :include, String

        # @!attribute interval
        #   Bucket size for the `series` (only used when `include` contains `series`).
        #   Defaults to `day`.
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRetrieveAnalyticsParams::Interval, nil]
        optional :interval, enum: -> { GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Interval }

        # @!attribute start_date
        #   Start of a custom `series` and `email` analytics window as a Unix timestamp in
        #   milliseconds. Set it together with `endDate`. Does not filter the top-level
        #   all-time totals.
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
        #   @param days [Integer] Last number of days for optional `series` and `email` analytics. Defaults to 365. Maxi
        #
        #   @param end_date [Integer] End of a custom `series` and `email` analytics window as a Unix timestamp in milli
        #
        #   @param include [String] Comma-separated optional data. `series` returns this participant's own activity
        #
        #   @param interval [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRetrieveAnalyticsParams::Interval] Bucket size for the `series` (only used when `include` contains `series`).
        #
        #   @param start_date [Integer] Start of a custom `series` and `email` analytics window as a Unix timestamp in mi
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

        # Bucket size for the `series` (only used when `include` contains `series`).
        # Defaults to `day`.
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
