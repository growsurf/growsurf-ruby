# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantAnalyticsResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig do
          returns(
            GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Analytics
          )
        end
        attr_accessor :analytics

        sig do
          returns(GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Ranks)
        end
        attr_accessor :ranks

        # Per-channel share counts (e.g. `email`, `facebook`, `twitter`, ...).
        sig { returns(T::Hash[Symbol, Integer]) }
        attr_accessor :share_count

        # Present only with `include=series`. Window end (Unix ms).
        sig { returns(T.nilable(Integer)) }
        attr_reader :end_date

        sig { params(end_date: Integer).void }
        attr_writer :end_date

        # Present only when `include=series`. This participant's own referral-link activity
        # per period (ascending), windowed by `days`/`startDate`/`endDate` and bucketed by
        # `interval`.
        sig do
          returns(
            T.nilable(
              T::Array[
                GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Series
              ]
            )
          )
        end
        attr_reader :series

        sig do
          params(
            series:
              T::Array[
                GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Series::OrHash
              ]
          ).void
        end
        attr_writer :series

        # Present only with `include=series`. Window start (Unix ms).
        sig { returns(T.nilable(Integer)) }
        attr_reader :start_date

        sig { params(start_date: Integer).void }
        attr_writer :start_date

        sig do
          params(
            analytics:
              GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Analytics::OrHash,
            ranks:
              GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Ranks::OrHash,
            share_count: T::Hash[Symbol, Integer],
            end_date: Integer,
            series:
              T::Array[
                GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Series::OrHash
              ],
            start_date: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          analytics:,
          ranks:,
          # Per-channel share counts (e.g. `email`, `facebook`, `twitter`, ...).
          share_count:,
          # Present only with `include=series`. Window end (Unix ms).
          end_date: nil,
          # Present only when `include=series`. This participant's own referral-link activity
          # per period (ascending), windowed by `days`/`startDate`/`endDate` and bucketed by
          # `interval`.
          series: nil,
          # Present only with `include=series`. Window start (Unix ms).
          start_date: nil
        )
        end

        sig do
          override.returns(
            {
              analytics:
                GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Analytics,
              ranks:
                GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Ranks,
              share_count: T::Hash[Symbol, Integer],
              end_date: Integer,
              series:
                T::Array[
                  GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Series
                ],
              start_date: Integer
            }
          )
        end
        def to_hash
        end

        class Analytics < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Analytics,
                GrowsurfRuby::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :currency_iso

          sig { params(currency_iso: String).void }
          attr_writer :currency_iso

          sig { returns(T.nilable(Integer)) }
          attr_reader :expired_referrals

          sig { params(expired_referrals: Integer).void }
          attr_writer :expired_referrals

          sig { returns(T.nilable(Integer)) }
          attr_reader :impressions

          sig { params(impressions: Integer).void }
          attr_writer :impressions

          sig { returns(T.nilable(Integer)) }
          attr_reader :invites_sent

          sig { params(invites_sent: Integer).void }
          attr_writer :invites_sent

          sig { returns(T.nilable(Integer)) }
          attr_reader :leads

          sig { params(leads: Integer).void }
          attr_writer :leads

          sig { returns(T.nilable(Integer)) }
          attr_reader :monthly_referrals

          sig { params(monthly_referrals: Integer).void }
          attr_writer :monthly_referrals

          sig { returns(T.nilable(Integer)) }
          attr_reader :pending_rewards

          sig { params(pending_rewards: Integer).void }
          attr_writer :pending_rewards

          # Affiliate only. Revenue attributed to this participant's referrals, in minor
          # currency units.
          sig { returns(T.nilable(Integer)) }
          attr_reader :referral_revenue

          sig { params(referral_revenue: Integer).void }
          attr_writer :referral_revenue

          sig { returns(T.nilable(Integer)) }
          attr_reader :referrals

          sig { params(referrals: Integer).void }
          attr_writer :referrals

          sig { returns(T.nilable(Integer)) }
          attr_reader :rewards_earned

          sig { params(rewards_earned: Integer).void }
          attr_writer :rewards_earned

          # Affiliate only. Total commissions earned, in minor currency units.
          sig { returns(T.nilable(Integer)) }
          attr_reader :total_commissions

          sig { params(total_commissions: Integer).void }
          attr_writer :total_commissions

          # Affiliate only. Total paid out, in minor currency units.
          sig { returns(T.nilable(Integer)) }
          attr_reader :total_paid_out

          sig { params(total_paid_out: Integer).void }
          attr_writer :total_paid_out

          sig { returns(T.nilable(Integer)) }
          attr_reader :unique_impressions

          sig { params(unique_impressions: Integer).void }
          attr_writer :unique_impressions

          # Affiliate only. Approved commissions ready to pay, in minor currency units.
          sig { returns(T.nilable(Integer)) }
          attr_reader :upcoming_payout

          sig { params(upcoming_payout: Integer).void }
          attr_writer :upcoming_payout

          sig do
            params(
              currency_iso: String,
              expired_referrals: Integer,
              impressions: Integer,
              invites_sent: Integer,
              leads: Integer,
              monthly_referrals: Integer,
              pending_rewards: Integer,
              referral_revenue: Integer,
              referrals: Integer,
              rewards_earned: Integer,
              total_commissions: Integer,
              total_paid_out: Integer,
              unique_impressions: Integer,
              upcoming_payout: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            currency_iso: nil,
            expired_referrals: nil,
            impressions: nil,
            invites_sent: nil,
            leads: nil,
            monthly_referrals: nil,
            pending_rewards: nil,
            # Affiliate only. Revenue attributed to this participant's referrals, in minor
            # currency units.
            referral_revenue: nil,
            referrals: nil,
            rewards_earned: nil,
            # Affiliate only. Total commissions earned, in minor currency units.
            total_commissions: nil,
            # Affiliate only. Total paid out, in minor currency units.
            total_paid_out: nil,
            unique_impressions: nil,
            # Affiliate only. Approved commissions ready to pay, in minor currency units.
            upcoming_payout: nil
          )
          end

          sig do
            override.returns(
              {
                currency_iso: String,
                expired_referrals: Integer,
                impressions: Integer,
                invites_sent: Integer,
                leads: Integer,
                monthly_referrals: Integer,
                pending_rewards: Integer,
                referral_revenue: Integer,
                referrals: Integer,
                rewards_earned: Integer,
                total_commissions: Integer,
                total_paid_out: Integer,
                unique_impressions: Integer,
                upcoming_payout: Integer
              }
            )
          end
          def to_hash
          end
        end

        class Ranks < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Ranks,
                GrowsurfRuby::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_accessor :monthly_rank

          sig { returns(T.nilable(Integer)) }
          attr_accessor :prev_monthly_rank

          # All-time rank (1-indexed), or null when unranked.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :rank

          sig do
            params(
              monthly_rank: T.nilable(Integer),
              prev_monthly_rank: T.nilable(Integer),
              rank: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            monthly_rank: nil,
            prev_monthly_rank: nil,
            # All-time rank (1-indexed), or null when unranked.
            rank: nil
          )
          end

          sig do
            override.returns(
              {
                monthly_rank: T.nilable(Integer),
                prev_monthly_rank: T.nilable(Integer),
                rank: T.nilable(Integer)
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
                GrowsurfRuby::Campaign::ParticipantAnalyticsResponse::Series,
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
      end
    end
  end
end
