# typed: strong

module Growsurf
  module Resources
    class Campaign
      sig { returns(Growsurf::Resources::Campaign::Participant) }
      attr_reader :participant

      # Participant reward retrieval and manual reward operations.
      sig { returns(Growsurf::Resources::Campaign::Reward) }
      attr_reader :reward

      # Affiliate transaction, commission, and payout operations.
      sig { returns(Growsurf::Resources::Campaign::Commission) }
      attr_reader :commission

      # Retrieves a program for the given program ID.
      sig do
        params(
          id: String,
          request_options: Growsurf::RequestOptions::OrHash
        ).returns(Growsurf::CampaignAPI)
      end
      def retrieve(
        # GrowSurf program ID.
        id,
        request_options: {}
      )
      end

      # Retrieves a list of your programs. Deleted programs are not returned.
      sig do
        params(request_options: Growsurf::RequestOptions::OrHash).returns(
          Growsurf::Models::CampaignListResponse
        )
      end
      def list(request_options: {})
      end

      # Retrieves a paged list of all participant commissions in an affiliate program.
      sig do
        params(
          id: String,
          limit: Integer,
          next_id: String,
          status: Growsurf::CampaignListCommissionsParams::Status::OrSymbol,
          request_options: Growsurf::RequestOptions::OrHash
        ).returns(Growsurf::ParticipantCommissionList)
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
            Growsurf::CampaignListLeaderboardParams::LeaderboardType::OrSymbol,
          limit: Integer,
          next_id: String,
          request_options: Growsurf::RequestOptions::OrHash
        ).returns(Growsurf::ParticipantList)
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
          request_options: Growsurf::RequestOptions::OrHash
        ).returns(Growsurf::ParticipantList)
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
          status: Growsurf::CampaignListPayoutsParams::Status::OrSymbol,
          request_options: Growsurf::RequestOptions::OrHash
        ).returns(Growsurf::ParticipantPayoutList)
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
          referral_status: Growsurf::Campaign::ReferralStatus::OrSymbol,
          sort_by: Growsurf::CampaignListReferralsParams::SortBy::OrSymbol,
          request_options: Growsurf::RequestOptions::OrHash
        ).returns(Growsurf::ReferralList)
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
          request_options: Growsurf::RequestOptions::OrHash
        ).returns(Growsurf::Models::CampaignRetrieveAnalyticsResponse)
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
      sig { params(client: Growsurf::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
