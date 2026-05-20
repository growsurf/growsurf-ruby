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
        # for mobile participant creation and mobile participant token flows.
        mobile_instance_id: nil,
        referral_status: nil,
        # Referrer participant ID or email address.
        referred_by: nil,
        request_options: {}
      )
      end

      # Retrieves a paged list of all participant commissions in an affiliate program.
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

      # Retrieves a paged list of all participant payouts in an affiliate program.
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

      # Retrieves analytics for a program.
      sig do
        params(
          id: String,
          days: Integer,
          end_date: Integer,
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
