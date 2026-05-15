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
    end
  end
end
