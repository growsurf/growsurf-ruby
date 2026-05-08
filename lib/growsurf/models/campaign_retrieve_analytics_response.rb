# frozen_string_literal: true

module Growsurf
  module Models
    # @see Growsurf::Resources::Campaign#retrieve_analytics
    class CampaignRetrieveAnalyticsResponse < Growsurf::Internal::Type::BaseModel
      # @!attribute analytics
      #
      #   @return [Growsurf::Models::CampaignRetrieveAnalyticsResponse::Analytics]
      required :analytics, -> { Growsurf::Models::CampaignRetrieveAnalyticsResponse::Analytics }

      # @!attribute end_date
      #
      #   @return [Integer]
      required :end_date, Integer, api_name: :endDate

      # @!attribute start_date
      #
      #   @return [Integer]
      required :start_date, Integer, api_name: :startDate

      # @!method initialize(analytics:, end_date:, start_date:)
      #   @param analytics [Growsurf::Models::CampaignRetrieveAnalyticsResponse::Analytics]
      #   @param end_date [Integer]
      #   @param start_date [Integer]

      # @see Growsurf::Models::CampaignRetrieveAnalyticsResponse#analytics
      class Analytics < Growsurf::Internal::Type::BaseModel
        # @!attribute bluesky_shares
        #
        #   @return [Integer, nil]
        optional :bluesky_shares, Integer, api_name: :blueskyShares

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

        # @!method initialize(bluesky_shares: nil, email_shares: nil, facebook_shares: nil, impressions: nil, invites: nil, linked_in_shares: nil, messenger_shares: nil, participants: nil, pinterest_shares: nil, qrcode_shares: nil, reddit_shares: nil, referral_credit_expireds: nil, referral_credit_pendings: nil, referrals: nil, sms_shares: nil, telegram_shares: nil, threads_shares: nil, total_commission_count: nil, total_commissions: nil, total_revenue: nil, tumblr_shares: nil, twitter_shares: nil, unique_impressions: nil, wechat_shares: nil, whats_app_shares: nil)
        #   Some parameter documentations has been truncated, see
        #   {Growsurf::Models::CampaignRetrieveAnalyticsResponse::Analytics} for more
        #   details.
        #
        #   @param bluesky_shares [Integer]
        #
        #   @param email_shares [Integer]
        #
        #   @param facebook_shares [Integer]
        #
        #   @param impressions [Integer]
        #
        #   @param invites [Integer]
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
    end
  end
end
