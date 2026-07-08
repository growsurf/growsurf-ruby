# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#retrieve_analytics
    class CampaignRetrieveAnalyticsResponse < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute analytics
      #
      #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics]
      required :analytics, -> { GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics }

      # @!attribute end_date
      #
      #   @return [Integer]
      required :end_date, Integer, api_name: :endDate

      # @!attribute start_date
      #
      #   @return [Integer]
      required :start_date, Integer, api_name: :startDate

      # @!attribute previous_period
      #   Present only when `include` contains `previousPeriod`.
      #
      #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::PreviousPeriod, nil]
      optional :previous_period,
               -> { GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::PreviousPeriod },
               api_name: :previousPeriod

      # @!attribute rates
      #   Present only when `include` contains `rates`.
      #
      #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Rates, nil]
      optional :rates, -> { GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Rates }

      # @!attribute series
      #   Present only when `interval` is `day`, `week`, or `month`. Per-period totals,
      #   ascending.
      #
      #   @return [Array<GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Series>, nil]
      optional :series,
               -> {
                 GrowsurfRuby::Internal::Type::ArrayOf[
                   GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Series
                 ]
               }

      # @!attribute status_counts
      #   Present only when `include` contains `statusCounts`.
      #
      #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts, nil]
      optional :status_counts,
               -> { GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts },
               api_name: :statusCounts

      # @!method initialize(analytics:, end_date:, start_date:, previous_period: nil, rates: nil, series: nil, status_counts: nil)
      #   @param analytics [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics]
      #
      #   @param end_date [Integer]
      #
      #   @param start_date [Integer]
      #
      #   @param previous_period [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::PreviousPeriod] Present only when `include` contains `previousPeriod`.
      #
      #   @param rates [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Rates] Present only when `include` contains `rates`.
      #
      #   @param series [Array<GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Series>] Present only when `interval` is `day`, `week`, or `month`. Per-period totals, asce
      #
      #   @param status_counts [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts] Present only when `include` contains `statusCounts`.

      # @see GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse#analytics
      class Analytics < GrowsurfRuby::Internal::Type::BaseModel
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

        # @!method initialize(android_native_shares: nil, bluesky_shares: nil, copy_ref_link_shares: nil, email_shares: nil, facebook_shares: nil, impressions: nil, invites: nil, ios_native_shares: nil, linked_in_shares: nil, messenger_shares: nil, participants: nil, pinterest_shares: nil, qrcode_shares: nil, reddit_shares: nil, referral_credit_expireds: nil, referral_credit_pendings: nil, referrals: nil, sms_shares: nil, telegram_shares: nil, threads_shares: nil, total_commission_count: nil, total_commissions: nil, total_revenue: nil, tumblr_shares: nil, twitter_shares: nil, unique_impressions: nil, wechat_shares: nil, whats_app_shares: nil)
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics} for more
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

      # @see GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse#previous_period
      class PreviousPeriod < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute analytics
        #
        #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics]
        required :analytics, -> { GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics }

        # @!attribute end_date
        #
        #   @return [Integer]
        required :end_date, Integer, api_name: :endDate

        # @!attribute start_date
        #
        #   @return [Integer]
        required :start_date, Integer, api_name: :startDate

        # @!method initialize(analytics:, end_date:, start_date:)
        #   Totals for the equal-length window immediately preceding the requested one.
        #
        #   @param analytics [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics]
        #
        #   @param end_date [Integer]
        #
        #   @param start_date [Integer]
      end

      # @see GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse#rates
      class Rates < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute participation_rate
        #   `participants` divided by `uniqueImpressions`.
        #
        #   @return [Float, nil]
        optional :participation_rate, Float, api_name: :participationRate

        # @!attribute referral_conversion_rate
        #   `referrals` divided by `uniqueImpressions`.
        #
        #   @return [Float, nil]
        optional :referral_conversion_rate, Float, api_name: :referralConversionRate

        # @!attribute shares_per_participant
        #   Total shares across all channels divided by `participants`.
        #
        #   @return [Float, nil]
        optional :shares_per_participant, Float, api_name: :sharesPerParticipant

        # @!method initialize(participation_rate: nil, referral_conversion_rate: nil, shares_per_participant: nil)
        #   Derived referral rates, each a ratio in the range 0–1 (0 when its denominator is
        #   0).
        #
        #   @param participation_rate [Float] `participants` divided by `uniqueImpressions`.
        #
        #   @param referral_conversion_rate [Float] `referrals` divided by `uniqueImpressions`.
        #
        #   @param shares_per_participant [Float] Total shares across all channels divided by `participants`.
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
        #   {GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Series} for more
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

      # @see GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse#status_counts
      class StatusCounts < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute affiliate_status
        #   Affiliate only. Participant counts keyed by affiliate status.
        #
        #   @return [Hash{Symbol=>Integer}, nil]
        optional :affiliate_status,
                 GrowsurfRuby::Internal::Type::HashOf[Integer],
                 api_name: :affiliateStatus

        # @!attribute commission_status
        #   Affiliate only. Commission counts and amounts by status.
        #
        #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus, nil]
        optional :commission_status,
                 -> {
                   GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus
                 },
                 api_name: :commissionStatus

        # @!attribute currency_iso
        #
        #   @return [String, nil]
        optional :currency_iso, String, api_name: :currencyISO

        # @!attribute payout_status
        #   Affiliate only. Payout counts and amounts by status.
        #
        #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus, nil]
        optional :payout_status,
                 -> {
                   GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus
                 },
                 api_name: :payoutStatus

        # @!attribute reward_status
        #   Present for every program.
        #
        #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::RewardStatus, nil]
        optional :reward_status,
                 -> {
                   GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::RewardStatus
                 },
                 api_name: :rewardStatus

        # @!method initialize(affiliate_status: nil, commission_status: nil, currency_iso: nil, payout_status: nil, reward_status: nil)
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts} for more
        #   details.
        #
        #   Status-count breakdowns. `rewardStatus` is present for every program;
        #   `affiliateStatus`, `commissionStatus`, and `payoutStatus` are present only for
        #   affiliate programs. Money amounts are in minor units of `currencyISO`.
        #
        #   @param affiliate_status [Hash{Symbol=>Integer}] Affiliate only. Participant counts keyed by affiliate status.
        #
        #   @param commission_status [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus] Affiliate only. Commission counts and amounts by status.
        #
        #   @param currency_iso [String]
        #
        #   @param payout_status [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus] Affiliate only. Payout counts and amounts by status.
        #
        #   @param reward_status [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::RewardStatus] Present for every program.

        # @see GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts#commission_status
        class CommissionStatus < GrowsurfRuby::Internal::Type::BaseModel
          # @!attribute approved
          #
          #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric, nil]
          optional :approved,
                   -> {
                     GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric
                   }

          # @!attribute paid
          #
          #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric, nil]
          optional :paid,
                   -> {
                     GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric
                   }

          # @!attribute pending
          #
          #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric, nil]
          optional :pending,
                   -> {
                     GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric
                   }

          # @!attribute reversed
          #
          #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric, nil]
          optional :reversed,
                   -> {
                     GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric
                   }

          # @!method initialize(approved: nil, paid: nil, pending: nil, reversed: nil)
          #   Affiliate only. Commission counts and amounts by status.
          #
          #   @param approved [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric]
          #
          #   @param paid [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric]
          #
          #   @param pending [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric]
          #
          #   @param reversed [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric]

          class CommissionStatusMetric < GrowsurfRuby::Internal::Type::BaseModel
            # @!attribute count
            #
            #   @return [Integer, nil]
            optional :count, Integer

            # @!attribute total_amount
            #   Total commission amount in minor currency units.
            #
            #   @return [Integer, nil]
            optional :total_amount, Integer, api_name: :totalAmount

            # @!attribute total_revenue
            #   Total attributed revenue in minor currency units.
            #
            #   @return [Integer, nil]
            optional :total_revenue, Integer, api_name: :totalRevenue

            # @!method initialize(count: nil, total_amount: nil, total_revenue: nil)
            #   @param count [Integer]
            #
            #   @param total_amount [Integer] Total commission amount in minor currency units.
            #
            #   @param total_revenue [Integer] Total attributed revenue in minor currency units.
          end
        end

        # @see GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts#payout_status
        class PayoutStatus < GrowsurfRuby::Internal::Type::BaseModel
          # @!attribute failed
          #
          #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric, nil]
          optional :failed,
                   -> {
                     GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric
                   }

          # @!attribute issued
          #
          #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric, nil]
          optional :issued,
                   -> {
                     GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric
                   }

          # @!attribute queued
          #
          #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric, nil]
          optional :queued,
                   -> {
                     GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric
                   }

          # @!attribute upcoming
          #
          #   @return [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric, nil]
          optional :upcoming,
                   -> {
                     GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric
                   }

          # @!method initialize(failed: nil, issued: nil, queued: nil, upcoming: nil)
          #   Affiliate only. Payout counts and amounts by status.
          #
          #   @param failed [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric]
          #
          #   @param issued [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric]
          #
          #   @param queued [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric]
          #
          #   @param upcoming [GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric]

          class PayoutStatusMetric < GrowsurfRuby::Internal::Type::BaseModel
            # @!attribute count
            #
            #   @return [Integer, nil]
            optional :count, Integer

            # @!attribute total_amount
            #   Total payout amount in minor currency units.
            #
            #   @return [Integer, nil]
            optional :total_amount, Integer, api_name: :totalAmount

            # @!method initialize(count: nil, total_amount: nil)
            #   @param count [Integer]
            #
            #   @param total_amount [Integer] Total payout amount in minor currency units.
          end
        end

        # @see GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts#reward_status
        class RewardStatus < GrowsurfRuby::Internal::Type::BaseModel
          # @!attribute approved
          #
          #   @return [Integer, nil]
          optional :approved, Integer

          # @!attribute pending
          #   Unapproved rewards awaiting fulfillment.
          #
          #   @return [Integer, nil]
          optional :pending, Integer

          # @!method initialize(approved: nil, pending: nil)
          #   @param approved [Integer]
          #
          #   @param pending [Integer] Unapproved rewards awaiting fulfillment.
        end
      end
    end
  end
end
