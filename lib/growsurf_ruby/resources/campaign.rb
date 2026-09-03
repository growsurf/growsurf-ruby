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

      # Campaign reward configuration operations.
      # @return [GrowsurfRuby::Resources::Campaign::Rewards]
      attr_reader :rewards

      # Program Resource management and secure FILE upload operations.
      # @return [GrowsurfRuby::Resources::Campaign::ProgramResources]
      attr_reader :resources

      # Program Editor "Design" tab configuration operations.
      # @return [GrowsurfRuby::Resources::Campaign::Design]
      attr_reader :design

      # Program Editor "Emails" tab configuration operations.
      # @return [GrowsurfRuby::Resources::Campaign::Emails]
      attr_reader :emails

      # Program Editor "Options" tab configuration operations.
      # @return [GrowsurfRuby::Resources::Campaign::Options]
      attr_reader :options

      # Program Editor "Installation" tab configuration operations.
      # @return [GrowsurfRuby::Resources::Campaign::Installation]
      attr_reader :installation

      # Program webhook configuration operations.
      # @return [GrowsurfRuby::Resources::Campaign::Webhooks]
      attr_reader :webhooks

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

      # Creates a new program, plus any optional campaign rewards. The new program is
      # created in `DRAFT` status and owned by the API key's bound team.
      #
      # @overload create(type:, company_logo_image_url: nil, company_name: nil, currency_iso: nil, goal: nil, name: nil, rewards: nil, request_options: {})
      #
      # @param type [Symbol, GrowsurfRuby::Models::CampaignCreateParams::Type] The program type. Immutable after creation.
      #
      # @param company_logo_image_url [String]
      #
      # @param company_name [String]
      #
      # @param currency_iso [String] ISO 4217 currency code. Defaults to USD. Chosen when the program is created and immutable afterward — it cannot be changed on update.
      #
      # @param goal [Symbol, GrowsurfRuby::Models::CampaignCreateParams::Goal] What the program is for, which seeds share settings that suit that audience. Programs selling to businesses start with the LinkedIn share button visible; consumer, financial, education, insurance, newsletter, and waitlist programs start with it hidden. Set only when the program is created.
      #
      # @param name [String] The program name. Defaults to a generated friendly label plus the creation date.
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

      # Updates a program's identity and lifecycle. Only the fields you send are
      # changed. `type`, `urlId`, and `currencyISO` are immutable. Editor-tab
      # configuration (design, emails, options, installation) is edited via the
      # dedicated config sub-resources, not here. The program cannot be deleted via this
      # endpoint.
      #
      # @overload update(id, company_logo_image_url: nil, company_name: nil, name: nil, status: nil, request_options: {})
      #
      # @param id [String] Path param: GrowSurf program ID.
      #
      # @param company_logo_image_url [String] Body param
      #
      # @param company_name [String] Body param
      #
      # @param name [String] Body param
      #
      # @param status [Symbol, GrowsurfRuby::Models::CampaignUpdateParams::Status] Body param: The requested program status. `IN_PROGRESS` publishes or resumes the
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

      # Clones an existing program into a new `DRAFT` program. Integrations and
      # credentials are not copied; active rewards are cloned.
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

      # Invites someone to join the affiliate program. GrowSurf emails them a single-use
      # accept link; accepting it enrolls them as an approved affiliate without going
      # through the public application. One active invite can exist per email address.
      #
      # @overload create_affiliate_invite(id, email:, first_name: nil, last_name: nil, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param email [String] Valid email address to invite. Maximum 255 characters.
      #
      # @param first_name [String] Invitee first name, used in the invite email. Maximum 255 characters.
      #
      # @param last_name [String] Invitee last name. Maximum 255 characters.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::AffiliateInvite]
      #
      # @see GrowsurfRuby::Models::CampaignCreateAffiliateInviteParams
      def create_affiliate_invite(id, params)
        parsed, options = GrowsurfRuby::CampaignCreateAffiliateInviteParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["campaign/%1$s/affiliate-invites", id],
          body: parsed,
          model: GrowsurfRuby::AffiliateInvite,
          options: options
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

      # Lists an affiliate program's applications, newest first. Applications exist on
      # programs that review public signups (an `affiliateApplicationMode` of
      # `MANUAL_REVIEW` or `AUTO_APPROVE`). A pending applicant is not a participant
      # until their application is approved.
      #
      # @overload list_affiliate_applications(id, limit: nil, offset: nil, status: nil, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param limit [Integer] How many applications to return per page (1-100).
      #
      # @param offset [Integer] Offset number used to skip through a result set.
      #
      # @param status [Symbol, GrowsurfRuby::Models::CampaignListAffiliateApplicationsParams::Status] Only return applications with this status.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::AffiliateApplicationListResponse]
      #
      # @see GrowsurfRuby::Models::CampaignListAffiliateApplicationsParams
      def list_affiliate_applications(id, params = {})
        parsed, options = GrowsurfRuby::CampaignListAffiliateApplicationsParams.dump_request(params)
        query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["campaign/%1$s/affiliate-applications", id],
          query: query,
          model: GrowsurfRuby::Models::AffiliateApplicationListResponse,
          options: options
        )
      end

      # Lists an affiliate program's enrollment invites, newest first.
      #
      # @overload list_affiliate_invites(id, limit: nil, offset: nil, status: nil, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param limit [Integer] How many invites to return per page (1-100).
      #
      # @param offset [Integer] Offset number used to skip through a result set.
      #
      # @param status [Symbol, GrowsurfRuby::Models::CampaignListAffiliateInvitesParams::Status] Only return invites with this status.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::AffiliateInviteListResponse]
      #
      # @see GrowsurfRuby::Models::CampaignListAffiliateInvitesParams
      def list_affiliate_invites(id, params = {})
        parsed, options = GrowsurfRuby::CampaignListAffiliateInvitesParams.dump_request(params)
        query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["campaign/%1$s/affiliate-invites", id],
          query: query,
          model: GrowsurfRuby::Models::AffiliateInviteListResponse,
          options: options
        )
      end

      # **Affiliate programs only.** Retrieves a paged list of all participant
      # commissions in an affiliate program.
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

      # **Affiliate programs only.** Retrieves a paged list of all participant payouts
      # in an affiliate program.
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

      # Re-sends a pending invite with a fresh accept link (the previous link stops
      # working). Resends are rate limited per invite; retry after a few minutes if a
      # resend was just sent.
      #
      # @overload resend_affiliate_invite(invite_id, id:, request_options: {})
      #
      # @param invite_id [String] Affiliate invite ID.
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::AffiliateInvite]
      #
      # @see GrowsurfRuby::Models::CampaignResendAffiliateInviteParams
      def resend_affiliate_invite(invite_id, params)
        parsed, options = GrowsurfRuby::CampaignResendAffiliateInviteParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["campaign/%1$s/affiliate-invites/%2$s/resend", id, invite_id],
          model: GrowsurfRuby::AffiliateInvite,
          options: options
        )
      end

      # Returns one affiliate application, including its submitted form answers.
      #
      # @overload retrieve_affiliate_application(application_id, id:, request_options: {})
      #
      # @param application_id [String] Affiliate application ID.
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::AffiliateApplication]
      #
      # @see GrowsurfRuby::Models::CampaignRetrieveAffiliateApplicationParams
      def retrieve_affiliate_application(application_id, params)
        parsed, options = GrowsurfRuby::CampaignRetrieveAffiliateApplicationParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["campaign/%1$s/affiliate-applications/%2$s", id, application_id],
          model: GrowsurfRuby::AffiliateApplication,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {GrowsurfRuby::Models::CampaignRetrieveAnalyticsParams} for more details.
      #
      # Retrieves analytics for a program. Pass `interval` to also get a time-series
      # (`series`) alongside the totals, and `include` to add previous-period totals,
      # status breakdowns, derived rates, email performance, or participant engagement.
      # Add `engagement` for covered activity totals, comparisons, series, and breakdowns.
      # Unknown coverage returns explicit unavailable states rather than zeroes.
      #
      # @overload retrieve_analytics(id, days: nil, end_date: nil, include: nil, interval: nil, platform: nil, start_date: nil, timezone: nil, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param days [Integer] Last number of days to retrieve analytics for. Defaults to 365. Maximum 1825.
      #
      # @param end_date [Integer] End date of the analytics timeframe as a Unix timestamp in milliseconds. Require
      #
      # @param include [String] Comma-separated list of optional data to include: `previousPeriod` adds totals for
      #
      # @param interval [Symbol, GrowsurfRuby::Models::CampaignRetrieveAnalyticsParams::Interval] When set to `day`, `week`, or `month`, the response also includes a `series` array
      #
      # @param platform [Symbol, GrowsurfRuby::Models::CampaignRetrieveAnalyticsParams::Platform] Limits engagement events to one client platform.
      #
      # @param start_date [Integer] Start date of the analytics timeframe as a Unix timestamp in milliseconds. Requi
      #
      # @param timezone [String] IANA timezone used for engagement interval boundaries and distinct-day calculations.
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

      # Retrieves activation cohorts for a program. Each cohort follows eligible
      # participants through portal views, sharing, referral visits, leads, and credited
      # referrals. Coverage states distinguish unknown values from zeroes.
      #
      # @overload retrieve_activation_analytics(id, cohort_from: nil, cohort_to: nil, cohort_interval: nil, observation_window_days: nil, timezone: nil, request_options: {})
      #
      # @param id [String] GrowSurf program ID.
      # @param cohort_from [Integer] Inclusive cohort enrollment start, as a Unix timestamp in milliseconds.
      # @param cohort_to [Integer] Exclusive cohort enrollment end, as a Unix timestamp in milliseconds.
      # @param cohort_interval [Symbol, GrowsurfRuby::Models::CampaignRetrieveActivationAnalyticsParams::CohortInterval] Cohort bucket size. Defaults to `day`.
      # @param observation_window_days [Integer] Days after enrollment allowed for each participant to reach a stage. Use `7` or `30`.
      # @param timezone [String] IANA timezone used for cohort bounds. Defaults to `UTC`.
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      # @return [GrowsurfRuby::Models::CampaignActivationAnalyticsResponse]
      # @see GrowsurfRuby::Models::CampaignRetrieveActivationAnalyticsParams
      def retrieve_activation_analytics(id, params = {})
        parsed, options = GrowsurfRuby::CampaignRetrieveActivationAnalyticsParams.dump_request(params)
        query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["campaign/%1$s/analytics/activation", id],
          query: query.transform_keys(
            cohort_from: "cohortFrom",
            cohort_to: "cohortTo",
            cohort_interval: "cohortInterval",
            observation_window_days: "observationWindowDays"
          ),
          model: GrowsurfRuby::Models::CampaignActivationAnalyticsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {GrowsurfRuby::Models::CampaignReviewAffiliateApplicationParams} for more
      # details.
      #
      # Decides a pending application. Set `status` to `APPROVED` to enroll the applicant
      # (this creates the participant, or upgrades an existing participant with the same
      # email), or to `DENIED` with an optional `rejectionReason`. A denied applicant may
      # reapply after the program's reapplication cooldown; send an earlier
      # `reapplyAllowedAt` (without `status`) to shorten that wait for one applicant.
      # Provide exactly one of `status` or `reapplyAllowedAt`. Denial-only fields are
      # only valid with `status` set to `DENIED`. Approval is idempotent: repeating it
      # returns the same participant.
      #
      # @overload review_affiliate_application(application_id, id:, allow_immediate_reapply: nil, reapply_allowed_at: nil, rejection_reason: nil, review_note: nil, status: nil, request_options: {})
      #
      # @param application_id [String] Affiliate application ID.
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param allow_immediate_reapply [Boolean] Only valid when `status` is `DENIED`; let the applicant reapply right away
      #
      # @param reapply_allowed_at [Integer] For an already-denied application, move the reapplication window to this earlier
      #
      # @param rejection_reason [String] Short reason recorded with a denial. Only valid when `status` is `DENIED`. Maximum 255 characters.
      #
      # @param review_note [String] Private note recorded with a denial. Only valid when `status` is `DENIED`; never shown to the applicant. Maximum 500 characters.
      #
      # @param status [Symbol, GrowsurfRuby::Models::CampaignReviewAffiliateApplicationParams::Status] The decision. `APPROVED` enrolls the applicant as an affiliate; `DENIED` closes
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::AffiliateApplication]
      #
      # @see GrowsurfRuby::Models::CampaignReviewAffiliateApplicationParams
      def review_affiliate_application(application_id, params)
        parsed, options = GrowsurfRuby::CampaignReviewAffiliateApplicationParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["campaign/%1$s/affiliate-applications/%2$s", id, application_id],
          body: parsed,
          model: GrowsurfRuby::AffiliateApplication,
          options: options
        )
      end

      # Revokes a pending invite. Its emailed accept link stops working immediately.
      #
      # @overload revoke_affiliate_invite(invite_id, id:, request_options: {})
      #
      # @param invite_id [String] Affiliate invite ID.
      #
      # @param id [String] GrowSurf program ID.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::AffiliateInvite]
      #
      # @see GrowsurfRuby::Models::CampaignRevokeAffiliateInviteParams
      def revoke_affiliate_invite(invite_id, params)
        parsed, options = GrowsurfRuby::CampaignRevokeAffiliateInviteParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["campaign/%1$s/affiliate-invites/%2$s", id, invite_id],
          model: GrowsurfRuby::AffiliateInvite,
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
        @resources = GrowsurfRuby::Resources::Campaign::ProgramResources.new(client: client)
        @design = GrowsurfRuby::Resources::Campaign::Design.new(client: client)
        @emails = GrowsurfRuby::Resources::Campaign::Emails.new(client: client)
        @options = GrowsurfRuby::Resources::Campaign::Options.new(client: client)
        @installation = GrowsurfRuby::Resources::Campaign::Installation.new(client: client)
        @webhooks = GrowsurfRuby::Resources::Campaign::Webhooks.new(client: client)
      end
    end
  end
end
