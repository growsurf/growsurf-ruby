# frozen_string_literal: true

module Growsurf
  module Resources
    class Campaign
      # @return [Growsurf::Resources::Campaign::Participant]
      attr_reader :participant

      # Participant reward retrieval and manual reward operations.
      # @return [Growsurf::Resources::Campaign::Reward]
      attr_reader :reward

      # Affiliate transaction, commission, and payout operations.
      # @return [Growsurf::Resources::Campaign::Commission]
      attr_reader :commission

      # Retrieves a program for the given program ID.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Growsurf::Models::CampaignAPI]
      #
      # @see Growsurf::Models::CampaignRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["campaign/%1$s", id],
          model: Growsurf::CampaignAPI,
          options: params[:request_options]
        )
      end

      # Retrieves a list of your programs. Deleted programs are not returned.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Growsurf::Models::CampaignListResponse]
      #
      # @see Growsurf::Models::CampaignListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "campaigns",
          model: Growsurf::Models::CampaignListResponse,
          options: params[:request_options]
        )
      end

      # Retrieves a paged list of all participant commissions in an affiliate program.
      #
      # @overload list_commissions(id, limit: nil, next_id: nil, status: nil, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param limit [Integer] Number of results to return. Maximum 100.
      #
      # @param next_id [String] ID to start the next paged result set with.
      #
      # @param status [Symbol, Growsurf::Models::CampaignListCommissionsParams::Status] Participant commission status.
      #
      # @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Growsurf::Models::ParticipantCommissionList]
      #
      # @see Growsurf::Models::CampaignListCommissionsParams
      def list_commissions(id, params = {})
        parsed, options = Growsurf::CampaignListCommissionsParams.dump_request(params)
        query = Growsurf::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["campaign/%1$s/commissions", id],
          query: query.transform_keys(next_id: "nextId"),
          model: Growsurf::ParticipantCommissionList,
          options: options
        )
      end

      # Retrieves participants in leaderboard order for the specified leaderboard type.
      #
      # @overload list_leaderboard(id, is_monthly: nil, leaderboard_type: nil, limit: nil, next_id: nil, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param is_monthly [Boolean] Deprecated. Use `leaderboardType=CURRENT_MONTH` instead.
      #
      # @param leaderboard_type [Symbol, Growsurf::Models::CampaignListLeaderboardParams::LeaderboardType] Leaderboard ordering mode.
      #
      # @param limit [Integer] Number of results to return. Maximum 100.
      #
      # @param next_id [String] ID to start the next paged result set with.
      #
      # @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Growsurf::Models::ParticipantList]
      #
      # @see Growsurf::Models::CampaignListLeaderboardParams
      def list_leaderboard(id, params = {})
        parsed, options = Growsurf::CampaignListLeaderboardParams.dump_request(params)
        query = Growsurf::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["campaign/%1$s/leaderboard", id],
          query: query.transform_keys(
            is_monthly: "isMonthly",
            leaderboard_type: "leaderboardType",
            next_id: "nextId"
          ),
          model: Growsurf::ParticipantList,
          options: options
        )
      end

      # Retrieves a paged list of participants in a program.
      #
      # @overload list_participants(id, limit: nil, next_id: nil, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param limit [Integer] Number of results to return. Maximum 100.
      #
      # @param next_id [String] ID to start the next paged result set with.
      #
      # @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Growsurf::Models::ParticipantList]
      #
      # @see Growsurf::Models::CampaignListParticipantsParams
      def list_participants(id, params = {})
        parsed, options = Growsurf::CampaignListParticipantsParams.dump_request(params)
        query = Growsurf::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["campaign/%1$s/participants", id],
          query: query.transform_keys(next_id: "nextId"),
          model: Growsurf::ParticipantList,
          options: options
        )
      end

      # Retrieves a paged list of all participant payouts in an affiliate program.
      #
      # @overload list_payouts(id, limit: nil, next_id: nil, status: nil, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param limit [Integer] Number of results to return. Maximum 100.
      #
      # @param next_id [String] ID to start the next paged result set with.
      #
      # @param status [Symbol, Growsurf::Models::CampaignListPayoutsParams::Status] Participant payout status.
      #
      # @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Growsurf::Models::ParticipantPayoutList]
      #
      # @see Growsurf::Models::CampaignListPayoutsParams
      def list_payouts(id, params = {})
        parsed, options = Growsurf::CampaignListPayoutsParams.dump_request(params)
        query = Growsurf::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["campaign/%1$s/payouts", id],
          query: query.transform_keys(next_id: "nextId"),
          model: Growsurf::ParticipantPayoutList,
          options: options
        )
      end

      # Retrieves a list of all referrals and email invites made by participants in a
      # program.
      #
      # @overload list_referrals(id, desc: nil, email: nil, first_name: nil, last_name: nil, limit: nil, next_id: nil, offset: nil, referral_status: nil, sort_by: nil, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param desc [Boolean] Return results in descending order when true.
      #
      # @param email [String] URL-encoded email value to filter referral results.
      #
      # @param first_name [String] First name value to filter results.
      #
      # @param last_name [String] Last name value to filter results.
      #
      # @param limit [Integer] Number of results to return. Maximum 100.
      #
      # @param next_id [String] ID to start the next paged result set with.
      #
      # @param offset [Integer] Offset number used to skip through a result set.
      #
      # @param referral_status [Symbol, Growsurf::Models::Campaign::ReferralStatus]
      #
      # @param sort_by [Symbol, Growsurf::Models::CampaignListReferralsParams::SortBy] Field used to sort referral results.
      #
      # @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Growsurf::Models::ReferralList]
      #
      # @see Growsurf::Models::CampaignListReferralsParams
      def list_referrals(id, params = {})
        parsed, options = Growsurf::CampaignListReferralsParams.dump_request(params)
        query = Growsurf::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["campaign/%1$s/referrals", id],
          query: query.transform_keys(
            first_name: "firstName",
            last_name: "lastName",
            next_id: "nextId",
            referral_status: "referralStatus",
            sort_by: "sortBy"
          ),
          model: Growsurf::ReferralList,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Growsurf::Models::CampaignRetrieveAnalyticsParams} for more details.
      #
      # Retrieves analytics for a program.
      #
      # @overload retrieve_analytics(id, days: nil, end_date: nil, start_date: nil, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param days [Integer] Last number of days to retrieve analytics for. Defaults to 365. Maximum 1825.
      #
      # @param end_date [Integer] End date of the analytics timeframe as a Unix timestamp in milliseconds. Require
      #
      # @param start_date [Integer] Start date of the analytics timeframe as a Unix timestamp in milliseconds. Requi
      #
      # @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Growsurf::Models::CampaignRetrieveAnalyticsResponse]
      #
      # @see Growsurf::Models::CampaignRetrieveAnalyticsParams
      def retrieve_analytics(id, params = {})
        parsed, options = Growsurf::CampaignRetrieveAnalyticsParams.dump_request(params)
        query = Growsurf::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["campaign/%1$s/analytics", id],
          query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
          model: Growsurf::Models::CampaignRetrieveAnalyticsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Growsurf::Client]
      def initialize(client:)
        @client = client
        @participant = Growsurf::Resources::Campaign::Participant.new(client: client)
        @reward = Growsurf::Resources::Campaign::Reward.new(client: client)
        @commission = Growsurf::Resources::Campaign::Commission.new(client: client)
      end
    end
  end
end
