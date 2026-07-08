# typed: strong

module GrowsurfRuby
  module Models
    class CampaignRetrieveAnalyticsResponse < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig do
        returns(
          GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics
        )
      end
      attr_reader :analytics

      sig do
        params(
          analytics:
            GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics::OrHash
        ).void
      end
      attr_writer :analytics

      sig { returns(Integer) }
      attr_accessor :end_date

      sig { returns(Integer) }
      attr_accessor :start_date

      # Present only when `include` contains `previousPeriod`.
      sig do
        returns(
          T.nilable(
            GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::PreviousPeriod
          )
        )
      end
      attr_reader :previous_period

      sig do
        params(
          previous_period:
            GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::PreviousPeriod::OrHash
        ).void
      end
      attr_writer :previous_period

      # Present only when `include` contains `rates`.
      sig do
        returns(
          T.nilable(
            GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Rates
          )
        )
      end
      attr_reader :rates

      sig do
        params(
          rates:
            GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Rates::OrHash
        ).void
      end
      attr_writer :rates

      # Present only when `interval` is `day`, `week`, or `month`. Per-period totals,
      # ascending.
      sig do
        returns(
          T.nilable(
            T::Array[
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Series
            ]
          )
        )
      end
      attr_reader :series

      sig do
        params(
          series:
            T::Array[
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Series::OrHash
            ]
        ).void
      end
      attr_writer :series

      # Present only when `include` contains `statusCounts`.
      sig do
        returns(
          T.nilable(
            GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts
          )
        )
      end
      attr_reader :status_counts

      sig do
        params(
          status_counts:
            GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::OrHash
        ).void
      end
      attr_writer :status_counts

      sig do
        params(
          analytics:
            GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics::OrHash,
          end_date: Integer,
          start_date: Integer,
          previous_period:
            GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::PreviousPeriod::OrHash,
          rates:
            GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Rates::OrHash,
          series:
            T::Array[
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Series::OrHash
            ],
          status_counts:
            GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        analytics:,
        end_date:,
        start_date:,
        # Present only when `include` contains `previousPeriod`.
        previous_period: nil,
        # Present only when `include` contains `rates`.
        rates: nil,
        # Present only when `interval` is `day`, `week`, or `month`. Per-period totals,
        # ascending.
        series: nil,
        # Present only when `include` contains `statusCounts`.
        status_counts: nil
      )
      end

      sig do
        override.returns(
          {
            analytics:
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics,
            end_date: Integer,
            start_date: Integer,
            previous_period:
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::PreviousPeriod,
            rates:
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Rates,
            series:
              T::Array[
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Series
              ],
            status_counts:
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts
          }
        )
      end
      def to_hash
      end

      class Analytics < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :android_native_shares

        sig { params(android_native_shares: Integer).void }
        attr_writer :android_native_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :bluesky_shares

        sig { params(bluesky_shares: Integer).void }
        attr_writer :bluesky_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :copy_ref_link_shares

        sig { params(copy_ref_link_shares: Integer).void }
        attr_writer :copy_ref_link_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :email_shares

        sig { params(email_shares: Integer).void }
        attr_writer :email_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :facebook_shares

        sig { params(facebook_shares: Integer).void }
        attr_writer :facebook_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :impressions

        sig { params(impressions: Integer).void }
        attr_writer :impressions

        sig { returns(T.nilable(Integer)) }
        attr_reader :invites

        sig { params(invites: Integer).void }
        attr_writer :invites

        sig { returns(T.nilable(Integer)) }
        attr_reader :ios_native_shares

        sig { params(ios_native_shares: Integer).void }
        attr_writer :ios_native_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :linked_in_shares

        sig { params(linked_in_shares: Integer).void }
        attr_writer :linked_in_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :messenger_shares

        sig { params(messenger_shares: Integer).void }
        attr_writer :messenger_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :participants

        sig { params(participants: Integer).void }
        attr_writer :participants

        sig { returns(T.nilable(Integer)) }
        attr_reader :pinterest_shares

        sig { params(pinterest_shares: Integer).void }
        attr_writer :pinterest_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :qrcode_shares

        sig { params(qrcode_shares: Integer).void }
        attr_writer :qrcode_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :reddit_shares

        sig { params(reddit_shares: Integer).void }
        attr_writer :reddit_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :referral_credit_expireds

        sig { params(referral_credit_expireds: Integer).void }
        attr_writer :referral_credit_expireds

        sig { returns(T.nilable(Integer)) }
        attr_reader :referral_credit_pendings

        sig { params(referral_credit_pendings: Integer).void }
        attr_writer :referral_credit_pendings

        sig { returns(T.nilable(Integer)) }
        attr_reader :referrals

        sig { params(referrals: Integer).void }
        attr_writer :referrals

        sig { returns(T.nilable(Integer)) }
        attr_reader :sms_shares

        sig { params(sms_shares: Integer).void }
        attr_writer :sms_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :telegram_shares

        sig { params(telegram_shares: Integer).void }
        attr_writer :telegram_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :threads_shares

        sig { params(threads_shares: Integer).void }
        attr_writer :threads_shares

        # Affiliate programs only. Number of commission records.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_commission_count

        sig { params(total_commission_count: Integer).void }
        attr_writer :total_commission_count

        # Affiliate programs only. Commissions in the smallest unit of the program
        # currency.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_commissions

        sig { params(total_commissions: Integer).void }
        attr_writer :total_commissions

        # Affiliate programs only. Revenue in the smallest unit of the program currency.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_revenue

        sig { params(total_revenue: Integer).void }
        attr_writer :total_revenue

        sig { returns(T.nilable(Integer)) }
        attr_reader :tumblr_shares

        sig { params(tumblr_shares: Integer).void }
        attr_writer :tumblr_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :twitter_shares

        sig { params(twitter_shares: Integer).void }
        attr_writer :twitter_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :unique_impressions

        sig { params(unique_impressions: Integer).void }
        attr_writer :unique_impressions

        sig { returns(T.nilable(Integer)) }
        attr_reader :wechat_shares

        sig { params(wechat_shares: Integer).void }
        attr_writer :wechat_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :whats_app_shares

        sig { params(whats_app_shares: Integer).void }
        attr_writer :whats_app_shares

        sig do
          params(
            android_native_shares: Integer,
            bluesky_shares: Integer,
            copy_ref_link_shares: Integer,
            email_shares: Integer,
            facebook_shares: Integer,
            impressions: Integer,
            invites: Integer,
            ios_native_shares: Integer,
            linked_in_shares: Integer,
            messenger_shares: Integer,
            participants: Integer,
            pinterest_shares: Integer,
            qrcode_shares: Integer,
            reddit_shares: Integer,
            referral_credit_expireds: Integer,
            referral_credit_pendings: Integer,
            referrals: Integer,
            sms_shares: Integer,
            telegram_shares: Integer,
            threads_shares: Integer,
            total_commission_count: Integer,
            total_commissions: Integer,
            total_revenue: Integer,
            tumblr_shares: Integer,
            twitter_shares: Integer,
            unique_impressions: Integer,
            wechat_shares: Integer,
            whats_app_shares: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          android_native_shares: nil,
          bluesky_shares: nil,
          copy_ref_link_shares: nil,
          email_shares: nil,
          facebook_shares: nil,
          impressions: nil,
          invites: nil,
          ios_native_shares: nil,
          linked_in_shares: nil,
          messenger_shares: nil,
          participants: nil,
          pinterest_shares: nil,
          qrcode_shares: nil,
          reddit_shares: nil,
          referral_credit_expireds: nil,
          referral_credit_pendings: nil,
          referrals: nil,
          sms_shares: nil,
          telegram_shares: nil,
          threads_shares: nil,
          # Affiliate programs only. Number of commission records.
          total_commission_count: nil,
          # Affiliate programs only. Commissions in the smallest unit of the program
          # currency.
          total_commissions: nil,
          # Affiliate programs only. Revenue in the smallest unit of the program currency.
          total_revenue: nil,
          tumblr_shares: nil,
          twitter_shares: nil,
          unique_impressions: nil,
          wechat_shares: nil,
          whats_app_shares: nil
        )
        end

        sig do
          override.returns(
            {
              android_native_shares: Integer,
              bluesky_shares: Integer,
              copy_ref_link_shares: Integer,
              email_shares: Integer,
              facebook_shares: Integer,
              impressions: Integer,
              invites: Integer,
              ios_native_shares: Integer,
              linked_in_shares: Integer,
              messenger_shares: Integer,
              participants: Integer,
              pinterest_shares: Integer,
              qrcode_shares: Integer,
              reddit_shares: Integer,
              referral_credit_expireds: Integer,
              referral_credit_pendings: Integer,
              referrals: Integer,
              sms_shares: Integer,
              telegram_shares: Integer,
              threads_shares: Integer,
              total_commission_count: Integer,
              total_commissions: Integer,
              total_revenue: Integer,
              tumblr_shares: Integer,
              twitter_shares: Integer,
              unique_impressions: Integer,
              wechat_shares: Integer,
              whats_app_shares: Integer
            }
          )
        end
        def to_hash
        end
      end

      class PreviousPeriod < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::PreviousPeriod,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig do
          returns(
            GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics
          )
        end
        attr_reader :analytics

        sig do
          params(
            analytics:
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics::OrHash
          ).void
        end
        attr_writer :analytics

        sig { returns(Integer) }
        attr_accessor :end_date

        sig { returns(Integer) }
        attr_accessor :start_date

        # Totals for the equal-length window immediately preceding the requested one.
        sig do
          params(
            analytics:
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics::OrHash,
            end_date: Integer,
            start_date: Integer
          ).returns(T.attached_class)
        end
        def self.new(analytics:, end_date:, start_date:)
        end

        sig do
          override.returns(
            {
              analytics:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Analytics,
              end_date: Integer,
              start_date: Integer
            }
          )
        end
        def to_hash
        end
      end

      class Rates < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Rates,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # `participants` divided by `uniqueImpressions`.
        sig { returns(T.nilable(Float)) }
        attr_reader :participation_rate

        sig { params(participation_rate: Float).void }
        attr_writer :participation_rate

        # `referrals` divided by `uniqueImpressions`.
        sig { returns(T.nilable(Float)) }
        attr_reader :referral_conversion_rate

        sig { params(referral_conversion_rate: Float).void }
        attr_writer :referral_conversion_rate

        # Total shares across all channels divided by `participants`.
        sig { returns(T.nilable(Float)) }
        attr_reader :shares_per_participant

        sig { params(shares_per_participant: Float).void }
        attr_writer :shares_per_participant

        # Derived referral rates, each a ratio in the range 0–1 (0 when its denominator is
        # 0).
        sig do
          params(
            participation_rate: Float,
            referral_conversion_rate: Float,
            shares_per_participant: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # `participants` divided by `uniqueImpressions`.
          participation_rate: nil,
          # `referrals` divided by `uniqueImpressions`.
          referral_conversion_rate: nil,
          # Total shares across all channels divided by `participants`.
          shares_per_participant: nil
        )
        end

        sig do
          override.returns(
            {
              participation_rate: Float,
              referral_conversion_rate: Float,
              shares_per_participant: Float
            }
          )
        end
        def to_hash
        end
      end

      class Series < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::Series,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :android_native_shares

        sig { params(android_native_shares: Integer).void }
        attr_writer :android_native_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :bluesky_shares

        sig { params(bluesky_shares: Integer).void }
        attr_writer :bluesky_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :copy_ref_link_shares

        sig { params(copy_ref_link_shares: Integer).void }
        attr_writer :copy_ref_link_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :email_shares

        sig { params(email_shares: Integer).void }
        attr_writer :email_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :facebook_shares

        sig { params(facebook_shares: Integer).void }
        attr_writer :facebook_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :impressions

        sig { params(impressions: Integer).void }
        attr_writer :impressions

        sig { returns(T.nilable(Integer)) }
        attr_reader :invites

        sig { params(invites: Integer).void }
        attr_writer :invites

        sig { returns(T.nilable(Integer)) }
        attr_reader :ios_native_shares

        sig { params(ios_native_shares: Integer).void }
        attr_writer :ios_native_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :linked_in_shares

        sig { params(linked_in_shares: Integer).void }
        attr_writer :linked_in_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :messenger_shares

        sig { params(messenger_shares: Integer).void }
        attr_writer :messenger_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :participants

        sig { params(participants: Integer).void }
        attr_writer :participants

        # Start of the period, as a Unix timestamp in milliseconds (UTC).
        sig { returns(T.nilable(Integer)) }
        attr_reader :period_start

        sig { params(period_start: Integer).void }
        attr_writer :period_start

        sig { returns(T.nilable(Integer)) }
        attr_reader :pinterest_shares

        sig { params(pinterest_shares: Integer).void }
        attr_writer :pinterest_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :qrcode_shares

        sig { params(qrcode_shares: Integer).void }
        attr_writer :qrcode_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :reddit_shares

        sig { params(reddit_shares: Integer).void }
        attr_writer :reddit_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :referral_credit_expireds

        sig { params(referral_credit_expireds: Integer).void }
        attr_writer :referral_credit_expireds

        sig { returns(T.nilable(Integer)) }
        attr_reader :referral_credit_pendings

        sig { params(referral_credit_pendings: Integer).void }
        attr_writer :referral_credit_pendings

        sig { returns(T.nilable(Integer)) }
        attr_reader :referrals

        sig { params(referrals: Integer).void }
        attr_writer :referrals

        sig { returns(T.nilable(Integer)) }
        attr_reader :sms_shares

        sig { params(sms_shares: Integer).void }
        attr_writer :sms_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :telegram_shares

        sig { params(telegram_shares: Integer).void }
        attr_writer :telegram_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :threads_shares

        sig { params(threads_shares: Integer).void }
        attr_writer :threads_shares

        # Affiliate programs only. Number of commission records.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_commission_count

        sig { params(total_commission_count: Integer).void }
        attr_writer :total_commission_count

        # Affiliate programs only. Commissions in the smallest unit of the program
        # currency.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_commissions

        sig { params(total_commissions: Integer).void }
        attr_writer :total_commissions

        # Affiliate programs only. Revenue in the smallest unit of the program currency.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_revenue

        sig { params(total_revenue: Integer).void }
        attr_writer :total_revenue

        sig { returns(T.nilable(Integer)) }
        attr_reader :tumblr_shares

        sig { params(tumblr_shares: Integer).void }
        attr_writer :tumblr_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :twitter_shares

        sig { params(twitter_shares: Integer).void }
        attr_writer :twitter_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :unique_impressions

        sig { params(unique_impressions: Integer).void }
        attr_writer :unique_impressions

        sig { returns(T.nilable(Integer)) }
        attr_reader :wechat_shares

        sig { params(wechat_shares: Integer).void }
        attr_writer :wechat_shares

        sig { returns(T.nilable(Integer)) }
        attr_reader :whats_app_shares

        sig { params(whats_app_shares: Integer).void }
        attr_writer :whats_app_shares

        sig do
          params(
            android_native_shares: Integer,
            bluesky_shares: Integer,
            copy_ref_link_shares: Integer,
            email_shares: Integer,
            facebook_shares: Integer,
            impressions: Integer,
            invites: Integer,
            ios_native_shares: Integer,
            linked_in_shares: Integer,
            messenger_shares: Integer,
            participants: Integer,
            period_start: Integer,
            pinterest_shares: Integer,
            qrcode_shares: Integer,
            reddit_shares: Integer,
            referral_credit_expireds: Integer,
            referral_credit_pendings: Integer,
            referrals: Integer,
            sms_shares: Integer,
            telegram_shares: Integer,
            threads_shares: Integer,
            total_commission_count: Integer,
            total_commissions: Integer,
            total_revenue: Integer,
            tumblr_shares: Integer,
            twitter_shares: Integer,
            unique_impressions: Integer,
            wechat_shares: Integer,
            whats_app_shares: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          android_native_shares: nil,
          bluesky_shares: nil,
          copy_ref_link_shares: nil,
          email_shares: nil,
          facebook_shares: nil,
          impressions: nil,
          invites: nil,
          ios_native_shares: nil,
          linked_in_shares: nil,
          messenger_shares: nil,
          participants: nil,
          # Start of the period, as a Unix timestamp in milliseconds (UTC).
          period_start: nil,
          pinterest_shares: nil,
          qrcode_shares: nil,
          reddit_shares: nil,
          referral_credit_expireds: nil,
          referral_credit_pendings: nil,
          referrals: nil,
          sms_shares: nil,
          telegram_shares: nil,
          threads_shares: nil,
          # Affiliate programs only. Number of commission records.
          total_commission_count: nil,
          # Affiliate programs only. Commissions in the smallest unit of the program
          # currency.
          total_commissions: nil,
          # Affiliate programs only. Revenue in the smallest unit of the program currency.
          total_revenue: nil,
          tumblr_shares: nil,
          twitter_shares: nil,
          unique_impressions: nil,
          wechat_shares: nil,
          whats_app_shares: nil
        )
        end

        sig do
          override.returns(
            {
              android_native_shares: Integer,
              bluesky_shares: Integer,
              copy_ref_link_shares: Integer,
              email_shares: Integer,
              facebook_shares: Integer,
              impressions: Integer,
              invites: Integer,
              ios_native_shares: Integer,
              linked_in_shares: Integer,
              messenger_shares: Integer,
              participants: Integer,
              period_start: Integer,
              pinterest_shares: Integer,
              qrcode_shares: Integer,
              reddit_shares: Integer,
              referral_credit_expireds: Integer,
              referral_credit_pendings: Integer,
              referrals: Integer,
              sms_shares: Integer,
              telegram_shares: Integer,
              threads_shares: Integer,
              total_commission_count: Integer,
              total_commissions: Integer,
              total_revenue: Integer,
              tumblr_shares: Integer,
              twitter_shares: Integer,
              unique_impressions: Integer,
              wechat_shares: Integer,
              whats_app_shares: Integer
            }
          )
        end
        def to_hash
        end
      end

      class StatusCounts < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # Affiliate only. Participant counts keyed by affiliate status.
        sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
        attr_reader :affiliate_status

        sig { params(affiliate_status: T::Hash[Symbol, Integer]).void }
        attr_writer :affiliate_status

        # Affiliate only. Commission counts and amounts by status.
        sig do
          returns(
            T.nilable(
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus
            )
          )
        end
        attr_reader :commission_status

        sig do
          params(
            commission_status:
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::OrHash
          ).void
        end
        attr_writer :commission_status

        sig { returns(T.nilable(String)) }
        attr_reader :currency_iso

        sig { params(currency_iso: String).void }
        attr_writer :currency_iso

        # Affiliate only. Payout counts and amounts by status.
        sig do
          returns(
            T.nilable(
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus
            )
          )
        end
        attr_reader :payout_status

        sig do
          params(
            payout_status:
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::OrHash
          ).void
        end
        attr_writer :payout_status

        # Present for every program.
        sig do
          returns(
            T.nilable(
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::RewardStatus
            )
          )
        end
        attr_reader :reward_status

        sig do
          params(
            reward_status:
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::RewardStatus::OrHash
          ).void
        end
        attr_writer :reward_status

        # Status-count breakdowns. `rewardStatus` is present for every program;
        # `affiliateStatus`, `commissionStatus`, and `payoutStatus` are present only for
        # affiliate programs. Money amounts are in minor units of `currencyISO`.
        sig do
          params(
            affiliate_status: T::Hash[Symbol, Integer],
            commission_status:
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::OrHash,
            currency_iso: String,
            payout_status:
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::OrHash,
            reward_status:
              GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::RewardStatus::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Affiliate only. Participant counts keyed by affiliate status.
          affiliate_status: nil,
          # Affiliate only. Commission counts and amounts by status.
          commission_status: nil,
          currency_iso: nil,
          # Affiliate only. Payout counts and amounts by status.
          payout_status: nil,
          # Present for every program.
          reward_status: nil
        )
        end

        sig do
          override.returns(
            {
              affiliate_status: T::Hash[Symbol, Integer],
              commission_status:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus,
              currency_iso: String,
              payout_status:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus,
              reward_status:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::RewardStatus
            }
          )
        end
        def to_hash
        end

        class CommissionStatus < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus,
                GrowsurfRuby::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric
              )
            )
          end
          attr_reader :approved

          sig do
            params(
              approved:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric::OrHash
            ).void
          end
          attr_writer :approved

          sig do
            returns(
              T.nilable(
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric
              )
            )
          end
          attr_reader :paid

          sig do
            params(
              paid:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric::OrHash
            ).void
          end
          attr_writer :paid

          sig do
            returns(
              T.nilable(
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric
              )
            )
          end
          attr_reader :pending

          sig do
            params(
              pending:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric::OrHash
            ).void
          end
          attr_writer :pending

          sig do
            returns(
              T.nilable(
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric
              )
            )
          end
          attr_reader :reversed

          sig do
            params(
              reversed:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric::OrHash
            ).void
          end
          attr_writer :reversed

          # Affiliate only. Commission counts and amounts by status.
          sig do
            params(
              approved:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric::OrHash,
              paid:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric::OrHash,
              pending:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric::OrHash,
              reversed:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric::OrHash
            ).returns(T.attached_class)
          end
          def self.new(approved: nil, paid: nil, pending: nil, reversed: nil)
          end

          sig do
            override.returns(
              {
                approved:
                  GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric,
                paid:
                  GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric,
                pending:
                  GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric,
                reversed:
                  GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric
              }
            )
          end
          def to_hash
          end

          class CommissionStatusMetric < GrowsurfRuby::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::CommissionStatus::CommissionStatusMetric,
                  GrowsurfRuby::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :count

            sig { params(count: Integer).void }
            attr_writer :count

            # Total commission amount in minor currency units.
            sig { returns(T.nilable(Integer)) }
            attr_reader :total_amount

            sig { params(total_amount: Integer).void }
            attr_writer :total_amount

            # Total attributed revenue in minor currency units.
            sig { returns(T.nilable(Integer)) }
            attr_reader :total_revenue

            sig { params(total_revenue: Integer).void }
            attr_writer :total_revenue

            sig do
              params(
                count: Integer,
                total_amount: Integer,
                total_revenue: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              count: nil,
              # Total commission amount in minor currency units.
              total_amount: nil,
              # Total attributed revenue in minor currency units.
              total_revenue: nil
            )
            end

            sig do
              override.returns(
                {
                  count: Integer,
                  total_amount: Integer,
                  total_revenue: Integer
                }
              )
            end
            def to_hash
            end
          end
        end

        class PayoutStatus < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus,
                GrowsurfRuby::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric
              )
            )
          end
          attr_reader :failed

          sig do
            params(
              failed:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric::OrHash
            ).void
          end
          attr_writer :failed

          sig do
            returns(
              T.nilable(
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric
              )
            )
          end
          attr_reader :issued

          sig do
            params(
              issued:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric::OrHash
            ).void
          end
          attr_writer :issued

          sig do
            returns(
              T.nilable(
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric
              )
            )
          end
          attr_reader :queued

          sig do
            params(
              queued:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric::OrHash
            ).void
          end
          attr_writer :queued

          sig do
            returns(
              T.nilable(
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric
              )
            )
          end
          attr_reader :upcoming

          sig do
            params(
              upcoming:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric::OrHash
            ).void
          end
          attr_writer :upcoming

          # Affiliate only. Payout counts and amounts by status.
          sig do
            params(
              failed:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric::OrHash,
              issued:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric::OrHash,
              queued:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric::OrHash,
              upcoming:
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric::OrHash
            ).returns(T.attached_class)
          end
          def self.new(failed: nil, issued: nil, queued: nil, upcoming: nil)
          end

          sig do
            override.returns(
              {
                failed:
                  GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric,
                issued:
                  GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric,
                queued:
                  GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric,
                upcoming:
                  GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric
              }
            )
          end
          def to_hash
          end

          class PayoutStatusMetric < GrowsurfRuby::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::PayoutStatus::PayoutStatusMetric,
                  GrowsurfRuby::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :count

            sig { params(count: Integer).void }
            attr_writer :count

            # Total payout amount in minor currency units.
            sig { returns(T.nilable(Integer)) }
            attr_reader :total_amount

            sig { params(total_amount: Integer).void }
            attr_writer :total_amount

            sig do
              params(count: Integer, total_amount: Integer).returns(
                T.attached_class
              )
            end
            def self.new(
              count: nil,
              # Total payout amount in minor currency units.
              total_amount: nil
            )
            end

            sig do
              override.returns({ count: Integer, total_amount: Integer })
            end
            def to_hash
            end
          end
        end

        class RewardStatus < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                GrowsurfRuby::Models::CampaignRetrieveAnalyticsResponse::StatusCounts::RewardStatus,
                GrowsurfRuby::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :approved

          sig { params(approved: Integer).void }
          attr_writer :approved

          # Unapproved rewards awaiting fulfillment.
          sig { returns(T.nilable(Integer)) }
          attr_reader :pending

          sig { params(pending: Integer).void }
          attr_writer :pending

          sig do
            params(approved: Integer, pending: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            approved: nil,
            # Unapproved rewards awaiting fulfillment.
            pending: nil
          )
          end

          sig { override.returns({ approved: Integer, pending: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
