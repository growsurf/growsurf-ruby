# frozen_string_literal: true

module Growsurf
  module Models
    # @see Growsurf::Resources::Campaign#list_leaderboard
    class CampaignListLeaderboardParams < Growsurf::Internal::Type::BaseModel
      extend Growsurf::Internal::Type::RequestParameters::Converter
      include Growsurf::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute is_monthly
      #   Deprecated. Use `leaderboardType=CURRENT_MONTH` instead.
      #
      #   @return [Boolean, nil]
      optional :is_monthly, Growsurf::Internal::Type::Boolean

      # @!attribute leaderboard_type
      #   Leaderboard ordering mode.
      #
      #   @return [Symbol, Growsurf::Models::CampaignListLeaderboardParams::LeaderboardType, nil]
      optional :leaderboard_type, enum: -> { Growsurf::CampaignListLeaderboardParams::LeaderboardType }

      # @!attribute limit
      #   Number of results to return. Maximum 100.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute next_id
      #   ID to start the next paged result set with.
      #
      #   @return [String, nil]
      optional :next_id, String

      # @!method initialize(id:, is_monthly: nil, leaderboard_type: nil, limit: nil, next_id: nil, request_options: {})
      #   @param id [String]
      #
      #   @param is_monthly [Boolean] Deprecated. Use `leaderboardType=CURRENT_MONTH` instead.
      #
      #   @param leaderboard_type [Symbol, Growsurf::Models::CampaignListLeaderboardParams::LeaderboardType] Leaderboard ordering mode.
      #
      #   @param limit [Integer] Number of results to return. Maximum 100.
      #
      #   @param next_id [String] ID to start the next paged result set with.
      #
      #   @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}]

      # Leaderboard ordering mode.
      module LeaderboardType
        extend Growsurf::Internal::Type::Enum

        ALL_TIME = :ALL_TIME
        CURRENT_MONTH = :CURRENT_MONTH
        PREV_MONTH = :PREV_MONTH
        TOTAL_IMPRESSION_COUNT = :TOTAL_IMPRESSION_COUNT
        UNIQUE_IMPRESSION_COUNT = :UNIQUE_IMPRESSION_COUNT
        BY_COMMISSIONS = :BY_COMMISSIONS
        BY_REVENUE = :BY_REVENUE
        BY_REFERRALS = :BY_REFERRALS
        BY_LEADS = :BY_LEADS

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
