# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      # @return [GrowsurfRuby::Resources::Campaign::Participant]
      attr_reader :participant

      # Participant reward retrieval and manual reward operations.
      # @return [GrowsurfRuby::Resources::Campaign::Reward]
      attr_reader :reward

      # Affiliate transaction, commission, and payout operations.
      # @return [GrowsurfRuby::Resources::Campaign::Commission]
      attr_reader :commission

      # Program reward configuration operations.
      # @return [GrowsurfRuby::Resources::Campaign::Rewards]
      attr_reader :rewards

      # Retrieves a program for the given program ID.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::CampaignAPI]
      #
      # @see GrowsurfRuby::Models::CampaignRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["campaign/%1$s", id],
          model: GrowsurfRuby::CampaignAPI,
          options: params[:request_options]
        )
      end

      # Retrieves a list of your programs. Deleted programs are not returned.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::CampaignListResponse]
      #
      # @see GrowsurfRuby::Models::CampaignListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "campaigns",
          model: GrowsurfRuby::Models::CampaignListResponse,
          options: params[:request_options]
        )
      end

      # Creates a program. Only `type` is required; everything else is
      # server-defaulted.
      #
      # @overload create(type:, company_logo_image_url: nil, company_name: nil, currency_iso: nil, goal: nil, name: nil, options: nil, rewards: nil, request_options: {})
      #
      # @param type [Symbol, GrowsurfRuby::Models::CampaignCreateParams::Type] The program type. Immutable after creation.
      #
      # @param company_logo_image_url [String]
      #
      # @param company_name [String]
      #
      # @param currency_iso [String] ISO 4217 currency code. Defaults to USD.
      #
      # @param goal [String]
      #
      # @param name [String] The program name. Defaults to "Untitled Program".
      #
      # @param options [Hash{Symbol=>Object}] A curated subset of program options to shallow-merge onto the defaults.
      #
      # @param rewards [Array<GrowsurfRuby::Models::Campaign::RewardCreateParams>] Optional inline rewards to create with the program.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::CampaignAPI]
      #
      # @see GrowsurfRuby::Models::CampaignCreateParams
      def create(params)
        parsed, options = GrowsurfRuby::CampaignCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "campaigns",
          body: parsed,
          model: GrowsurfRuby::CampaignAPI,
          options: options
        )
      end

      # Updates a program. Only the fields you send are changed. `type` and `urlId` are
      # immutable.
      #
      # @overload update(id, company_logo_image_url: nil, company_name: nil, currency_iso: nil, design: nil, emails: nil, goal: nil, installation: nil, name: nil, notifications: nil, options: nil, status: nil, request_options: {})
      #
      # @param id [String] Path param: GrowSurf program ID.
      #
      # @param company_logo_image_url [String] Body param
      #
      # @param company_name [String] Body param
      #
      # @param currency_iso [String] Body param
      #
      # @param design [Hash{Symbol=>Object}] Body param
      #
      # @param emails [Hash{Symbol=>Object}] Body param
      #
      # @param goal [String] Body param
      #
      # @param installation [Hash{Symbol=>Object}] Body param
      #
      # @param name [String] Body param
      #
      # @param notifications [Hash{Symbol=>Object}] Body param
      #
      # @param options [Hash{Symbol=>Object}] Body param
      #
      # @param status [Symbol, GrowsurfRuby::Models::CampaignUpdateParams::Status] Body param: The program status. Transitions are validated; DELETED is not allowe
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::CampaignAPI]
      #
      # @see GrowsurfRuby::Models::CampaignUpdateParams
      def update(id, params)
        parsed, options = GrowsurfRuby::CampaignUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["campaign/%1$s", id],
          body: parsed,
          model: GrowsurfRuby::CampaignAPI,
          options: options
        )
      end

      # Clones an existing program, returning the newly created program.
      #
      # @overload clone(id, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::CampaignAPI]
      def clone(id, params = {})
        @client.request(
          method: :post,
          path: ["campaign/%1$s/clone", id],
          model: GrowsurfRuby::CampaignAPI,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {GrowsurfRuby::Models::CampaignCreateMobileParticipantTokenParams} for more
      # details.
      #
      # Creates or returns a participant using the same input behavior as Add
      # Participant, then returns a participant-scoped token for GrowSurf mobile SDK
      # participant endpoints. Use this endpoint from your backend after your mobile app
      # authenticates a signed-in user. The program must have mobile SDK access enabled.
      #
      # @overload create_mobile_participant_token(id, email:, fingerprint: nil, first_name: nil, ip_address: nil, last_name: nil, metadata: nil, mobile_instance_id: nil, referral_status: nil, referred_by: nil, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param email [String]
      #
      # @param fingerprint [String]
      #
      # @param first_name [String]
      #
      # @param ip_address [String]
      #
      # @param last_name [String]
      #
      # @param metadata [Hash{Symbol=>Object}] Shallow custom metadata object.
      #
      # @param mobile_instance_id [String] Optional app-install scoped identifier for native mobile anti-fraud. Recommended
      #
      # @param referral_status [Symbol, GrowsurfRuby::Models::Campaign::Create::ReferralStatus]
      #
      # @param referred_by [String] Referrer participant ID or email address.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::CampaignCreateMobileParticipantTokenResponse]
      #
      # @see GrowsurfRuby::Models::CampaignCreateMobileParticipantTokenParams
      def create_mobile_participant_token(id, params)
        parsed, options = GrowsurfRuby::CampaignCreateMobileParticipantTokenParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["campaign/%1$s/mobile-participant-token", id],
          body: parsed,
          model: GrowsurfRuby::Models::CampaignCreateMobileParticipantTokenResponse,
          options: options
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
      # @param status [Symbol, GrowsurfRuby::Models::CampaignListCommissionsParams::Status] Participant commission status.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::ParticipantCommissionList]
      #
      # @see GrowsurfRuby::Models::CampaignListCommissionsParams
      def list_commissions(id, params = {})
        parsed, options = GrowsurfRuby::CampaignListCommissionsParams.dump_request(params)
        query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["campaign/%1$s/commissions", id],
          query: query.transform_keys(next_id: "nextId"),
          model: GrowsurfRuby::ParticipantCommissionList,
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
      # @param leaderboard_type [Symbol, GrowsurfRuby::Models::CampaignListLeaderboardParams::LeaderboardType] Leaderboard ordering mode.
      #
      # @param limit [Integer] Number of results to return. Maximum 100.
      #
      # @param next_id [String] ID to start the next paged result set with.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::ParticipantList]
      #
      # @see GrowsurfRuby::Models::CampaignListLeaderboardParams
      def list_leaderboard(id, params = {})
        parsed, options = GrowsurfRuby::CampaignListLeaderboardParams.dump_request(params)
        query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["campaign/%1$s/leaderboard", id],
          query: query.transform_keys(
            is_monthly: "isMonthly",
            leaderboard_type: "leaderboardType",
            next_id: "nextId"
          ),
          model: GrowsurfRuby::ParticipantList,
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
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::ParticipantList]
      #
      # @see GrowsurfRuby::Models::CampaignListParticipantsParams
      def list_participants(id, params = {})
        parsed, options = GrowsurfRuby::CampaignListParticipantsParams.dump_request(params)
        query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["campaign/%1$s/participants", id],
          query: query.transform_keys(next_id: "nextId"),
          model: GrowsurfRuby::ParticipantList,
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
      # @param status [Symbol, GrowsurfRuby::Models::CampaignListPayoutsParams::Status] Participant payout status.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::ParticipantPayoutList]
      #
      # @see GrowsurfRuby::Models::CampaignListPayoutsParams
      def list_payouts(id, params = {})
        parsed, options = GrowsurfRuby::CampaignListPayoutsParams.dump_request(params)
        query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["campaign/%1$s/payouts", id],
          query: query.transform_keys(next_id: "nextId"),
          model: GrowsurfRuby::ParticipantPayoutList,
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
      # @param referral_status [Symbol, GrowsurfRuby::Models::Campaign::ReferralStatus]
      #
      # @param sort_by [Symbol, GrowsurfRuby::Models::CampaignListReferralsParams::SortBy] Field used to sort referral results.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::ReferralList]
      #
      # @see GrowsurfRuby::Models::CampaignListReferralsParams
      def list_referrals(id, params = {})
        parsed, options = GrowsurfRuby::CampaignListReferralsParams.dump_request(params)
        query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
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
          model: GrowsurfRuby::ReferralList,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {GrowsurfRuby::Models::CampaignRetrieveAnalyticsParams} for more details.
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
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse]
      #
      # @see GrowsurfRuby::Models::CampaignRetrieveAnalyticsParams
      def retrieve_analytics(id, params = {})
        parsed, options = GrowsurfRuby::CampaignRetrieveAnalyticsParams.dump_request(params)
        query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["campaign/%1$s/analytics", id],
          query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
          model: GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [GrowsurfRuby::Client]
      def initialize(client:)
        @client = client
        @participant = GrowsurfRuby::Resources::Campaign::Participant.new(client: client)
        @reward = GrowsurfRuby::Resources::Campaign::Reward.new(client: client)
        @commission = GrowsurfRuby::Resources::Campaign::Commission.new(client: client)
        @rewards = GrowsurfRuby::Resources::Campaign::Rewards.new(client: client)
      end
    end
  end
end
