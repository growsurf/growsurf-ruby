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

      # @!attribute start_date
      #   Start date of the analytics timeframe as a Unix timestamp in milliseconds.
      #   Required if `days` is not set.
      #
      #   @return [Integer, nil]
      optional :start_date, Integer

      # @!method initialize(id:, days: nil, end_date: nil, start_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {GrowsurfRuby::Models::CampaignRetrieveAnalyticsParams} for more details.
      #
      #   @param id [String]
      #
      #   @param days [Integer] Last number of days to retrieve analytics for. Defaults to 365. Maximum 1825.
      #
      #   @param end_date [Integer] End date of the analytics timeframe as a Unix timestamp in milliseconds. Require
      #
      #   @param start_date [Integer] Start date of the analytics timeframe as a Unix timestamp in milliseconds. Requi
      #
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
