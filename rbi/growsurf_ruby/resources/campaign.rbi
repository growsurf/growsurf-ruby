# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      sig { returns(GrowsurfRuby::Resources::Campaign::Participant) }
      attr_reader :participant

      # Participant reward retrieval and manual reward operations.
      sig { returns(GrowsurfRuby::Resources::Campaign::Reward) }
      attr_reader :reward

      # Affiliate transaction, commission, and payout operations.
      sig { returns(GrowsurfRuby::Resources::Campaign::Commission) }
      attr_reader :commission

      # Campaign reward configuration operations.
      sig { returns(GrowsurfRuby::Resources::Campaign::Rewards) }
      attr_reader :rewards

      # Program Editor "Design" tab configuration operations.
      sig { returns(GrowsurfRuby::Resources::Campaign::Design) }
      attr_reader :design

      # Program Editor "Emails" tab configuration operations.
      sig { returns(GrowsurfRuby::Resources::Campaign::Emails) }
      attr_reader :emails

      # Program Editor "Options" tab configuration operations.
      sig { returns(GrowsurfRuby::Resources::Campaign::Options) }
      attr_reader :options

      # Program Editor "Installation" tab configuration operations.
      sig { returns(GrowsurfRuby::Resources::Campaign::Installation) }
      attr_reader :installation

      # Program webhook configuration operations.
      sig { returns(GrowsurfRuby::Resources::Campaign::Webhooks) }
      attr_reader :webhooks

      # Retrieves a program for the given program ID.
      sig do
        params(
          id: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(GrowsurfRuby::CampaignAPI)
      end
      def retrieve(
        # GrowSurf program ID.
        id,
        request_options: {}
      )
      end

      # Retrieves a list of your programs. Deleted programs are not returned.
      sig do
        params(request_options: GrowsurfRuby::RequestOptions::OrHash).returns(
          GrowsurfRuby::Models::CampaignListResponse
        )
      end
      def list(request_options: {})
      end

      # Creates a new program, plus any optional program rewards. The new program is
      # created in `DRAFT` status and owned by the API key's bound team.
      sig do
        params(
          type: GrowsurfRuby::CampaignCreateParams::Type::OrSymbol,
          company_logo_image_url: String,
          company_name: String,
          currency_iso: String,
          name: String,
          rewards: T::Array[GrowsurfRuby::Campaign::RewardCreateParams::OrHash],
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(GrowsurfRuby::CampaignAPI)
      end
      def create(
        # The program type. Immutable after creation.
        type:,
        company_logo_image_url: nil,
        company_name: nil,
        # ISO 4217 currency code. Defaults to USD. Chosen when the program is created and
        # immutable afterward — it cannot be changed on update.
        currency_iso: nil,
        # The program name. Defaults to "Untitled Program".
        name: nil,
        # Optional inline rewards to create with the program.
        rewards: nil,
        request_options: {}
      )
      end

      # Updates a program's identity and lifecycle. Only the fields you send are
      # changed. `type`, `urlId`, and `currencyISO` are immutable. Editor-tab
      # configuration (design, emails, options, installation) is edited via the
      # dedicated config sub-resources, not here. The program cannot be deleted via this
      # endpoint.
      sig do
        params(
          id: String,
          company_logo_image_url: String,
          company_name: String,
          name: String,
          status: GrowsurfRuby::CampaignUpdateParams::Status::OrSymbol,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(GrowsurfRuby::CampaignAPI)
      end
      def update(
        # Path param: GrowSurf program ID.
        id,
        # Body param
        company_logo_image_url: nil,
        # Body param
        company_name: nil,
        # Body param
        name: nil,
        # Body param: The requested program status. `IN_PROGRESS` publishes or resumes
        # the program; `COMPLETE` ends it. Any other value returns a `400`.
        status: nil,
        request_options: {}
      )
      end

      # Clones an existing program into a new `DRAFT` program. Integrations and
      # credentials are not copied; active rewards are cloned.
      sig do
        params(
          id: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(GrowsurfRuby::CampaignAPI)
      end
      def clone(
        # GrowSurf program ID.
        id,
        request_options: {}
      )
      end

      # Creates or returns a participant using the same input behavior as Add
      # Participant, then returns a participant-scoped token for GrowSurf mobile SDK
      # participant endpoints. Use this endpoint from your backend after your mobile app
      # authenticates a signed-in user. The program must have mobile SDK access enabled.
      sig do
        params(
          id: String,
          email: String,
          fingerprint: String,
          first_name: String,
          ip_address: String,
          last_name: String,
          metadata: T::Hash[Symbol, T.anything],
          mobile_instance_id: String,
          referral_status:
            GrowsurfRuby::Campaign::Create::ReferralStatus::OrSymbol,
          referred_by: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(
          GrowsurfRuby::Models::CampaignCreateMobileParticipantTokenResponse
        )
      end
      def create_mobile_participant_token(
        # GrowSurf program ID.
        id,
        email:,
        fingerprint: nil,
        first_name: nil,
        ip_address: nil,
        last_name: nil,
        # Shallow custom metadata object.
        metadata: nil,
        # Optional app-install scoped identifier for native mobile anti-fraud. Recommended
        # for mobile participant creation and mobile participant token flows. The official
        # mobile SDKs generate this as a lowercase UUID.
        mobile_instance_id: nil,
        referral_status: nil,
        # Referrer participant ID or email address.
        referred_by: nil,
        request_options: {}
      )
      end

      # **Affiliate programs only.** Retrieves a paged list of all participant
      # commissions in an affiliate program.
      sig do
        params(
          id: String,
          limit: Integer,
          next_id: String,
          status: GrowsurfRuby::CampaignListCommissionsParams::Status::OrSymbol,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(GrowsurfRuby::ParticipantCommissionList)
      end
      def list_commissions(
        # GrowSurf program ID.
        id,
        # Number of results to return. Maximum 100.
        limit: nil,
        # ID to start the next paged result set with.
        next_id: nil,
        # Participant commission status.
        status: nil,
        request_options: {}
      )
      end

      # Retrieves participants in leaderboard order for the specified leaderboard type.
      sig do
        params(
          id: String,
          is_monthly: T::Boolean,
          leaderboard_type:
            GrowsurfRuby::CampaignListLeaderboardParams::LeaderboardType::OrSymbol,
          limit: Integer,
          next_id: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(GrowsurfRuby::ParticipantList)
      end
      def list_leaderboard(
        # GrowSurf program ID.
        id,
        # Deprecated. Use `leaderboardType=CURRENT_MONTH` instead.
        is_monthly: nil,
        # Leaderboard ordering mode.
        leaderboard_type: nil,
        # Number of results to return. Maximum 100.
        limit: nil,
        # ID to start the next paged result set with.
        next_id: nil,
        request_options: {}
      )
      end

      # Retrieves a paged list of participants in a program.
      sig do
        params(
          id: String,
          limit: Integer,
          next_id: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(GrowsurfRuby::ParticipantList)
      end
      def list_participants(
        # GrowSurf program ID.
        id,
        # Number of results to return. Maximum 100.
        limit: nil,
        # ID to start the next paged result set with.
        next_id: nil,
        request_options: {}
      )
      end

      # **Affiliate programs only.** Retrieves a paged list of all participant payouts
      # in an affiliate program.
      sig do
        params(
          id: String,
          limit: Integer,
          next_id: String,
          status: GrowsurfRuby::CampaignListPayoutsParams::Status::OrSymbol,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(GrowsurfRuby::ParticipantPayoutList)
      end
      def list_payouts(
        # GrowSurf program ID.
        id,
        # Number of results to return. Maximum 100.
        limit: nil,
        # ID to start the next paged result set with.
        next_id: nil,
        # Participant payout status.
        status: nil,
        request_options: {}
      )
      end

      # Retrieves a list of all referrals and email invites made by participants in a
      # program.
      sig do
        params(
          id: String,
          desc: T::Boolean,
          email: String,
          first_name: String,
          last_name: String,
          limit: Integer,
          next_id: String,
          offset: Integer,
          referral_status: GrowsurfRuby::Campaign::ReferralStatus::OrSymbol,
          sort_by: GrowsurfRuby::CampaignListReferralsParams::SortBy::OrSymbol,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(GrowsurfRuby::ReferralList)
      end
      def list_referrals(
        # GrowSurf program ID.
        id,
        # Return results in descending order when true.
        desc: nil,
        # URL-encoded email value to filter referral results.
        email: nil,
        # First name value to filter results.
        first_name: nil,
        # Last name value to filter results.
        last_name: nil,
        # Number of results to return. Maximum 100.
        limit: nil,
        # ID to start the next paged result set with.
        next_id: nil,
        # Offset number used to skip through a result set.
        offset: nil,
        referral_status: nil,
        # Field used to sort referral results.
        sort_by: nil,
        request_options: {}
      )
      end

      # Retrieves analytics for a program. Pass `interval` to also get a time-series
      # (`series`) alongside the totals, and `include` to add previous-period totals,
      # status breakdowns, or derived rates — useful for detecting trends over time.
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
        ).returns(GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse)
      end
      def retrieve_analytics(
        # GrowSurf program ID.
        id,
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

      # @api private
      sig { params(client: GrowsurfRuby::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
