# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#retrieve_analytics
      class ParticipantAnalyticsResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute analytics
        #
        #   @return [GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse::Analytics]
        required :analytics, -> { GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Analytics }

        # @!attribute ranks
        #
        #   @return [GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse::Ranks]
        required :ranks, -> { GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Ranks }

        # @!attribute share_count
        #   Per-channel share counts (e.g. `email`, `facebook`, `twitter`, ...).
        #
        #   @return [Hash{Symbol=>Integer}]
        required :share_count,
                 GrowsurfRuby::Internal::Type::HashOf[Integer],
                 api_name: :shareCount

        # @!attribute end_date
        #   Present only with `include=series`. Window end (Unix ms).
        #
        #   @return [Integer, nil]
        optional :end_date, Integer, api_name: :endDate

        # @!attribute series
        #   Present only when `include=series`. This participant's own referral-link activity
        #   per period (ascending), windowed by `days`/`startDate`/`endDate` and bucketed by
        #   `interval`.
        #
        #   @return [Array<GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse::Series>, nil]
        optional :series,
                 -> {
                   GrowsurfRuby::Internal::Type::ArrayOf[
                     GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse::Series
                   ]
                 }

        # @!attribute start_date
        #   Present only with `include=series`. Window start (Unix ms).
        #
        #   @return [Integer, nil]
        optional :start_date, Integer, api_name: :startDate

        # @!method initialize(analytics:, ranks:, share_count:, end_date: nil, series: nil, start_date: nil)
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse} for more details.
        #
        #   @param analytics [GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse::Analytics]
        #
        #   @param ranks [GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse::Ranks]
        #
        #   @param share_count [Hash{Symbol=>Integer}] Per-channel share counts (e.g. `email`, `facebook`, `twitter`, ...).
        #
        #   @param end_date [Integer] Present only with `include=series`. Window end (Unix ms).
        #
        #   @param series [Array<GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse::Series>] Present only when `include=series`. This participant's own referral-link activity
        #
        #   @param start_date [Integer] Present only with `include=series`. Window start (Unix ms).

        # @see GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse#analytics
        class Analytics < GrowsurfRuby::Internal::Type::BaseModel
          # @!attribute currency_iso
          #
          #   @return [String, nil]
          optional :currency_iso, String, api_name: :currencyISO

          # @!attribute expired_referrals
          #
          #   @return [Integer, nil]
          optional :expired_referrals, Integer, api_name: :expiredReferrals

          # @!attribute impressions
          #
          #   @return [Integer, nil]
          optional :impressions, Integer

          # @!attribute invites_sent
          #
          #   @return [Integer, nil]
          optional :invites_sent, Integer, api_name: :invitesSent

          # @!attribute leads
          #
          #   @return [Integer, nil]
          optional :leads, Integer

          # @!attribute monthly_referrals
          #
          #   @return [Integer, nil]
          optional :monthly_referrals, Integer, api_name: :monthlyReferrals

          # @!attribute pending_rewards
          #
          #   @return [Integer, nil]
          optional :pending_rewards, Integer, api_name: :pendingRewards

          # @!attribute referral_revenue
          #   Affiliate only. Revenue attributed to this participant's referrals, in minor
          #   currency units.
          #
          #   @return [Integer, nil]
          optional :referral_revenue, Integer, api_name: :referralRevenue

          # @!attribute referrals
          #
          #   @return [Integer, nil]
          optional :referrals, Integer

          # @!attribute rewards_earned
          #
          #   @return [Integer, nil]
          optional :rewards_earned, Integer, api_name: :rewardsEarned

          # @!attribute total_commissions
          #   Affiliate only. Total commissions earned, in minor currency units.
          #
          #   @return [Integer, nil]
          optional :total_commissions, Integer, api_name: :totalCommissions

          # @!attribute total_paid_out
          #   Affiliate only. Total paid out, in minor currency units.
          #
          #   @return [Integer, nil]
          optional :total_paid_out, Integer, api_name: :totalPaidOut

          # @!attribute unique_impressions
          #
          #   @return [Integer, nil]
          optional :unique_impressions, Integer, api_name: :uniqueImpressions

          # @!attribute upcoming_payout
          #   Affiliate only. Approved commissions ready to pay, in minor currency units.
          #
          #   @return [Integer, nil]
          optional :upcoming_payout, Integer, api_name: :upcomingPayout

          # @!method initialize(currency_iso: nil, expired_referrals: nil, impressions: nil, invites_sent: nil, leads: nil, monthly_referrals: nil, pending_rewards: nil, referral_revenue: nil, referrals: nil, rewards_earned: nil, total_commissions: nil, total_paid_out: nil, unique_impressions: nil, upcoming_payout: nil)
          #   Some parameter documentations has been truncated, see
          #   {GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse::Analytics} for
          #   more details.
          #
          #   @param currency_iso [String]
          #
          #   @param expired_referrals [Integer]
          #
          #   @param impressions [Integer]
          #
          #   @param invites_sent [Integer]
          #
          #   @param leads [Integer]
          #
          #   @param monthly_referrals [Integer]
          #
          #   @param pending_rewards [Integer]
          #
          #   @param referral_revenue [Integer] Affiliate only. Revenue attributed to this participant's referrals, in minor curr
          #
          #   @param referrals [Integer]
          #
          #   @param rewards_earned [Integer]
          #
          #   @param total_commissions [Integer] Affiliate only. Total commissions earned, in minor currency units.
          #
          #   @param total_paid_out [Integer] Affiliate only. Total paid out, in minor currency units.
          #
          #   @param unique_impressions [Integer]
          #
          #   @param upcoming_payout [Integer] Affiliate only. Approved commissions ready to pay, in minor currency units.
        end

        # @see GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse#ranks
        class Ranks < GrowsurfRuby::Internal::Type::BaseModel
          # @!attribute monthly_rank
          #
          #   @return [Integer, nil]
          optional :monthly_rank, Integer, api_name: :monthlyRank, nil?: true

          # @!attribute prev_monthly_rank
          #
          #   @return [Integer, nil]
          optional :prev_monthly_rank, Integer, api_name: :prevMonthlyRank, nil?: true

          # @!attribute rank
          #   All-time rank (1-indexed), or null when unranked.
          #
          #   @return [Integer, nil]
          optional :rank, Integer, nil?: true

          # @!method initialize(monthly_rank: nil, prev_monthly_rank: nil, rank: nil)
          #   @param monthly_rank [Integer, nil]
          #
          #   @param prev_monthly_rank [Integer, nil]
          #
          #   @param rank [Integer, nil] All-time rank (1-indexed), or null when unranked.
        end

        class Series < GrowsurfRuby::Internal::Type::BaseModel
          # @!attribute android_native_shares
          #
          #   @return [Integer, nil]
          optional :android_native_shares, Integer, api_name: :androidNativeShares

          # @!attribute bluesky_shares
          #
          #   @return [Integer, nil]
          optional :bluesky_shares, Integer, api_name: :blueskyShares

          # @!attribute copy_ref_link_shares
          #
          #   @return [Integer, nil]
          optional :copy_ref_link_shares, Integer, api_name: :copyRefLinkShares

          # @!attribute email_shares
          #
          #   @return [Integer, nil]
          optional :email_shares, Integer, api_name: :emailShares

          # @!attribute facebook_shares
          #
          #   @return [Integer, nil]
          optional :facebook_shares, Integer, api_name: :facebookShares

          # @!attribute impressions
          #
          #   @return [Integer, nil]
          optional :impressions, Integer

          # @!attribute invites
          #
          #   @return [Integer, nil]
          optional :invites, Integer

          # @!attribute ios_native_shares
          #
          #   @return [Integer, nil]
          optional :ios_native_shares, Integer, api_name: :iosNativeShares

          # @!attribute linked_in_shares
          #
          #   @return [Integer, nil]
          optional :linked_in_shares, Integer, api_name: :linkedInShares

          # @!attribute messenger_shares
          #
          #   @return [Integer, nil]
          optional :messenger_shares, Integer, api_name: :messengerShares

          # @!attribute participants
          #
          #   @return [Integer, nil]
          optional :participants, Integer

          # @!attribute period_start
          #   Start of the period, as a Unix timestamp in milliseconds (UTC).
          #
          #   @return [Integer, nil]
          optional :period_start, Integer, api_name: :periodStart

          # @!attribute pinterest_shares
          #
          #   @return [Integer, nil]
          optional :pinterest_shares, Integer, api_name: :pinterestShares

          # @!attribute qrcode_shares
          #
          #   @return [Integer, nil]
          optional :qrcode_shares, Integer, api_name: :qrcodeShares

          # @!attribute reddit_shares
          #
          #   @return [Integer, nil]
          optional :reddit_shares, Integer, api_name: :redditShares

          # @!attribute referral_credit_expireds
          #
          #   @return [Integer, nil]
          optional :referral_credit_expireds, Integer, api_name: :referralCreditExpireds

          # @!attribute referral_credit_pendings
          #
          #   @return [Integer, nil]
          optional :referral_credit_pendings, Integer, api_name: :referralCreditPendings

          # @!attribute referrals
          #
          #   @return [Integer, nil]
          optional :referrals, Integer

          # @!attribute sms_shares
          #
          #   @return [Integer, nil]
          optional :sms_shares, Integer, api_name: :smsShares

          # @!attribute telegram_shares
          #
          #   @return [Integer, nil]
          optional :telegram_shares, Integer, api_name: :telegramShares

          # @!attribute threads_shares
          #
          #   @return [Integer, nil]
          optional :threads_shares, Integer, api_name: :threadsShares

          # @!attribute total_commission_count
          #   Affiliate programs only. Number of commission records.
          #
          #   @return [Integer, nil]
          optional :total_commission_count, Integer, api_name: :totalCommissionCount

          # @!attribute total_commissions
          #   Affiliate programs only. Commissions in the smallest unit of the program
          #   currency.
          #
          #   @return [Integer, nil]
          optional :total_commissions, Integer, api_name: :totalCommissions

          # @!attribute total_revenue
          #   Affiliate programs only. Revenue in the smallest unit of the program currency.
          #
          #   @return [Integer, nil]
          optional :total_revenue, Integer, api_name: :totalRevenue

          # @!attribute tumblr_shares
          #
          #   @return [Integer, nil]
          optional :tumblr_shares, Integer, api_name: :tumblrShares

          # @!attribute twitter_shares
          #
          #   @return [Integer, nil]
          optional :twitter_shares, Integer, api_name: :twitterShares

          # @!attribute unique_impressions
          #
          #   @return [Integer, nil]
          optional :unique_impressions, Integer, api_name: :uniqueImpressions

          # @!attribute wechat_shares
          #
          #   @return [Integer, nil]
          optional :wechat_shares, Integer, api_name: :wechatShares

          # @!attribute whats_app_shares
          #
          #   @return [Integer, nil]
          optional :whats_app_shares, Integer, api_name: :whatsAppShares

          # @!method initialize(android_native_shares: nil, bluesky_shares: nil, copy_ref_link_shares: nil, email_shares: nil, facebook_shares: nil, impressions: nil, invites: nil, ios_native_shares: nil, linked_in_shares: nil, messenger_shares: nil, participants: nil, period_start: nil, pinterest_shares: nil, qrcode_shares: nil, reddit_shares: nil, referral_credit_expireds: nil, referral_credit_pendings: nil, referrals: nil, sms_shares: nil, telegram_shares: nil, threads_shares: nil, total_commission_count: nil, total_commissions: nil, total_revenue: nil, tumblr_shares: nil, twitter_shares: nil, unique_impressions: nil, wechat_shares: nil, whats_app_shares: nil)
          #   Some parameter documentations has been truncated, see
          #   {GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse::Series} for more
          #   details.
          #
          #   @param android_native_shares [Integer]
          #
          #   @param bluesky_shares [Integer]
          #
          #   @param copy_ref_link_shares [Integer]
          #
          #   @param email_shares [Integer]
          #
          #   @param facebook_shares [Integer]
          #
          #   @param impressions [Integer]
          #
          #   @param invites [Integer]
          #
          #   @param ios_native_shares [Integer]
          #
          #   @param linked_in_shares [Integer]
          #
          #   @param messenger_shares [Integer]
          #
          #   @param participants [Integer]
          #
          #   @param period_start [Integer] Start of the period, as a Unix timestamp in milliseconds (UTC).
          #
          #   @param pinterest_shares [Integer]
          #
          #   @param qrcode_shares [Integer]
          #
          #   @param reddit_shares [Integer]
          #
          #   @param referral_credit_expireds [Integer]
          #
          #   @param referral_credit_pendings [Integer]
          #
          #   @param referrals [Integer]
          #
          #   @param sms_shares [Integer]
          #
          #   @param telegram_shares [Integer]
          #
          #   @param threads_shares [Integer]
          #
          #   @param total_commission_count [Integer] Affiliate programs only. Number of commission records.
          #
          #   @param total_commissions [Integer] Affiliate programs only. Commissions in the smallest unit of the program currenc
          #
          #   @param total_revenue [Integer] Affiliate programs only. Revenue in the smallest unit of the program currency.
          #
          #   @param tumblr_shares [Integer]
          #
          #   @param twitter_shares [Integer]
          #
          #   @param unique_impressions [Integer]
          #
          #   @param wechat_shares [Integer]
          #
          #   @param whats_app_shares [Integer]
        end
      end
    end
  end
end
