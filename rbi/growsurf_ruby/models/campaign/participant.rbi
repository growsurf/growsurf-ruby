# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class CampaignParticipant < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::CampaignParticipant,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :email

        sig { returns(Integer) }
        attr_accessor :monthly_rank

        sig { returns(Integer) }
        attr_accessor :monthly_referral_count

        sig { returns(Integer) }
        attr_accessor :rank

        sig { returns(Integer) }
        attr_accessor :referral_count

        sig { returns(T::Array[GrowsurfRuby::Campaign::ParticipantReward]) }
        attr_accessor :rewards

        sig { returns(String) }
        attr_accessor :share_url

        sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
        attr_reader :all_matching_fraudsters

        sig do
          params(
            all_matching_fraudsters: T::Array[T::Hash[Symbol, T.anything]]
          ).void
        end
        attr_writer :all_matching_fraudsters

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_at

        sig { params(created_at: Integer).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :fingerprint

        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        sig { returns(T.nilable(String)) }
        attr_reader :fraud_reason_code

        sig { params(fraud_reason_code: String).void }
        attr_writer :fraud_reason_code

        sig do
          returns(
            T.nilable(GrowsurfRuby::Campaign::FraudRiskLevel::TaggedSymbol)
          )
        end
        attr_reader :fraud_risk_level

        sig do
          params(
            fraud_risk_level: GrowsurfRuby::Campaign::FraudRiskLevel::OrSymbol
          ).void
        end
        attr_writer :fraud_risk_level

        sig { returns(T.nilable(Integer)) }
        attr_reader :impression_count

        sig { params(impression_count: Integer).void }
        attr_writer :impression_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :invite_count

        sig { params(invite_count: Integer).void }
        attr_writer :invite_count

        sig { returns(T.nilable(String)) }
        attr_accessor :ip_address

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_new

        sig { params(is_new: T::Boolean).void }
        attr_writer :is_new

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_winner

        sig { params(is_winner: T::Boolean).void }
        attr_writer :is_winner

        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # Shallow custom metadata object.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, T.anything]).void }
        attr_writer :metadata

        # App-install scoped mobile identifier used for anti-fraud matching when provided
        # by native mobile apps. The official mobile SDKs generate this as a lowercase
        # UUID. Not stored when strict GDPR/CCPA mode is enabled.
        sig { returns(T.nilable(String)) }
        attr_accessor :mobile_instance_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :monthly_referrals

        sig { params(monthly_referrals: T::Array[String]).void }
        attr_writer :monthly_referrals

        sig { returns(T.nilable(String)) }
        attr_accessor :notes

        sig { returns(T.nilable(String)) }
        attr_reader :paypal_email_address

        sig { params(paypal_email_address: String).void }
        attr_writer :paypal_email_address

        sig { returns(T.nilable(Integer)) }
        attr_reader :prev_monthly_rank

        sig { params(prev_monthly_rank: Integer).void }
        attr_writer :prev_monthly_rank

        sig { returns(T.nilable(Integer)) }
        attr_reader :prev_monthly_referral_count

        sig { params(prev_monthly_referral_count: Integer).void }
        attr_writer :prev_monthly_referral_count

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :referrals

        sig { params(referrals: T::Array[String]).void }
        attr_writer :referrals

        sig do
          returns(
            T.nilable(GrowsurfRuby::Campaign::ReferralSource::TaggedSymbol)
          )
        end
        attr_reader :referral_source

        sig do
          params(
            referral_source: GrowsurfRuby::Campaign::ReferralSource::OrSymbol
          ).void
        end
        attr_writer :referral_source

        sig do
          returns(
            T.nilable(GrowsurfRuby::Campaign::ReferralStatus::TaggedSymbol)
          )
        end
        attr_reader :referral_status

        sig do
          params(
            referral_status: GrowsurfRuby::Campaign::ReferralStatus::OrSymbol
          ).void
        end
        attr_writer :referral_status

        sig { returns(T.nilable(String)) }
        attr_reader :referred_by

        sig { params(referred_by: String).void }
        attr_writer :referred_by

        sig do
          returns(
            T.nilable(GrowsurfRuby::Campaign::CampaignParticipant::Referrer)
          )
        end
        attr_reader :referrer

        sig do
          params(
            referrer:
              T.nilable(
                GrowsurfRuby::Campaign::CampaignParticipant::Referrer::OrHash
              )
          ).void
        end
        attr_writer :referrer

        sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
        attr_reader :share_count

        sig { params(share_count: T::Hash[Symbol, Integer]).void }
        attr_writer :share_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :unique_impression_count

        sig { params(unique_impression_count: Integer).void }
        attr_writer :unique_impression_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :unread_commissions_count

        sig { params(unread_commissions_count: Integer).void }
        attr_writer :unread_commissions_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :unread_payouts_count

        sig { params(unread_payouts_count: Integer).void }
        attr_writer :unread_payouts_count

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :unsubscribed

        sig { params(unsubscribed: T::Boolean).void }
        attr_writer :unsubscribed

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :vanity_keys

        sig { params(vanity_keys: T::Array[String]).void }
        attr_writer :vanity_keys

        sig do
          params(
            id: String,
            email: String,
            monthly_rank: Integer,
            monthly_referral_count: Integer,
            rank: Integer,
            referral_count: Integer,
            rewards:
              T::Array[GrowsurfRuby::Campaign::ParticipantReward::OrHash],
            share_url: String,
            all_matching_fraudsters: T::Array[T::Hash[Symbol, T.anything]],
            created_at: Integer,
            fingerprint: T.nilable(String),
            first_name: T.nilable(String),
            fraud_reason_code: String,
            fraud_risk_level: GrowsurfRuby::Campaign::FraudRiskLevel::OrSymbol,
            impression_count: Integer,
            invite_count: Integer,
            ip_address: T.nilable(String),
            is_new: T::Boolean,
            is_winner: T::Boolean,
            last_name: T.nilable(String),
            metadata: T::Hash[Symbol, T.anything],
            mobile_instance_id: T.nilable(String),
            monthly_referrals: T::Array[String],
            notes: T.nilable(String),
            paypal_email_address: String,
            prev_monthly_rank: Integer,
            prev_monthly_referral_count: Integer,
            referrals: T::Array[String],
            referral_source: GrowsurfRuby::Campaign::ReferralSource::OrSymbol,
            referral_status: GrowsurfRuby::Campaign::ReferralStatus::OrSymbol,
            referred_by: String,
            referrer:
              T.nilable(
                GrowsurfRuby::Campaign::CampaignParticipant::Referrer::OrHash
              ),
            share_count: T::Hash[Symbol, Integer],
            unique_impression_count: Integer,
            unread_commissions_count: Integer,
            unread_payouts_count: Integer,
            unsubscribed: T::Boolean,
            vanity_keys: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          email:,
          monthly_rank:,
          monthly_referral_count:,
          rank:,
          referral_count:,
          rewards:,
          share_url:,
          all_matching_fraudsters: nil,
          created_at: nil,
          fingerprint: nil,
          first_name: nil,
          fraud_reason_code: nil,
          fraud_risk_level: nil,
          impression_count: nil,
          invite_count: nil,
          ip_address: nil,
          is_new: nil,
          is_winner: nil,
          last_name: nil,
          # Shallow custom metadata object.
          metadata: nil,
          # App-install scoped mobile identifier used for anti-fraud matching when provided
          # by native mobile apps. The official mobile SDKs generate this as a lowercase
          # UUID. Not stored when strict GDPR/CCPA mode is enabled.
          mobile_instance_id: nil,
          monthly_referrals: nil,
          notes: nil,
          paypal_email_address: nil,
          prev_monthly_rank: nil,
          prev_monthly_referral_count: nil,
          referrals: nil,
          referral_source: nil,
          referral_status: nil,
          referred_by: nil,
          referrer: nil,
          share_count: nil,
          unique_impression_count: nil,
          unread_commissions_count: nil,
          unread_payouts_count: nil,
          unsubscribed: nil,
          vanity_keys: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              email: String,
              monthly_rank: Integer,
              monthly_referral_count: Integer,
              rank: Integer,
              referral_count: Integer,
              rewards: T::Array[GrowsurfRuby::Campaign::ParticipantReward],
              share_url: String,
              all_matching_fraudsters: T::Array[T::Hash[Symbol, T.anything]],
              created_at: Integer,
              fingerprint: T.nilable(String),
              first_name: T.nilable(String),
              fraud_reason_code: String,
              fraud_risk_level:
                GrowsurfRuby::Campaign::FraudRiskLevel::TaggedSymbol,
              impression_count: Integer,
              invite_count: Integer,
              ip_address: T.nilable(String),
              is_new: T::Boolean,
              is_winner: T::Boolean,
              last_name: T.nilable(String),
              metadata: T::Hash[Symbol, T.anything],
              mobile_instance_id: T.nilable(String),
              monthly_referrals: T::Array[String],
              notes: T.nilable(String),
              paypal_email_address: String,
              prev_monthly_rank: Integer,
              prev_monthly_referral_count: Integer,
              referrals: T::Array[String],
              referral_source:
                GrowsurfRuby::Campaign::ReferralSource::TaggedSymbol,
              referral_status:
                GrowsurfRuby::Campaign::ReferralStatus::TaggedSymbol,
              referred_by: String,
              referrer:
                T.nilable(
                  GrowsurfRuby::Campaign::CampaignParticipant::Referrer
                ),
              share_count: T::Hash[Symbol, Integer],
              unique_impression_count: Integer,
              unread_commissions_count: Integer,
              unread_payouts_count: Integer,
              unsubscribed: T::Boolean,
              vanity_keys: T::Array[String]
            }
          )
        end
        def to_hash
        end

        class Referrer < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                GrowsurfRuby::Campaign::CampaignParticipant::Referrer,
                GrowsurfRuby::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(Integer)) }
          attr_reader :created_at

          sig { params(created_at: Integer).void }
          attr_writer :created_at

          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { params(email: String).void }
          attr_writer :email

          sig { returns(T.nilable(String)) }
          attr_accessor :fingerprint

          sig { returns(T.nilable(String)) }
          attr_accessor :first_name

          sig { returns(T.nilable(String)) }
          attr_reader :fraud_reason_code

          sig { params(fraud_reason_code: String).void }
          attr_writer :fraud_reason_code

          sig do
            returns(
              T.nilable(GrowsurfRuby::Campaign::FraudRiskLevel::TaggedSymbol)
            )
          end
          attr_reader :fraud_risk_level

          sig do
            params(
              fraud_risk_level: GrowsurfRuby::Campaign::FraudRiskLevel::OrSymbol
            ).void
          end
          attr_writer :fraud_risk_level

          sig { returns(T.nilable(Integer)) }
          attr_reader :impression_count

          sig { params(impression_count: Integer).void }
          attr_writer :impression_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :invite_count

          sig { params(invite_count: Integer).void }
          attr_writer :invite_count

          sig { returns(T.nilable(String)) }
          attr_accessor :ip_address

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_winner

          sig { params(is_winner: T::Boolean).void }
          attr_writer :is_winner

          sig { returns(T.nilable(String)) }
          attr_accessor :last_name

          # Shallow custom metadata object.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, T.anything]).void }
          attr_writer :metadata

          sig { returns(T.nilable(Integer)) }
          attr_reader :monthly_rank

          sig { params(monthly_rank: Integer).void }
          attr_writer :monthly_rank

          sig { returns(T.nilable(Integer)) }
          attr_reader :monthly_referral_count

          sig { params(monthly_referral_count: Integer).void }
          attr_writer :monthly_referral_count

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :monthly_referrals

          sig { params(monthly_referrals: T::Array[String]).void }
          attr_writer :monthly_referrals

          sig { returns(T.nilable(Integer)) }
          attr_reader :prev_monthly_rank

          sig { params(prev_monthly_rank: Integer).void }
          attr_writer :prev_monthly_rank

          sig { returns(T.nilable(Integer)) }
          attr_reader :prev_monthly_referral_count

          sig { params(prev_monthly_referral_count: Integer).void }
          attr_writer :prev_monthly_referral_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :rank

          sig { params(rank: Integer).void }
          attr_writer :rank

          sig { returns(T.nilable(Integer)) }
          attr_reader :referral_count

          sig { params(referral_count: Integer).void }
          attr_writer :referral_count

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :referrals

          sig { params(referrals: T::Array[String]).void }
          attr_writer :referrals

          sig do
            returns(
              T.nilable(GrowsurfRuby::Campaign::ReferralSource::TaggedSymbol)
            )
          end
          attr_reader :referral_source

          sig do
            params(
              referral_source: GrowsurfRuby::Campaign::ReferralSource::OrSymbol
            ).void
          end
          attr_writer :referral_source

          sig do
            returns(
              T.nilable(GrowsurfRuby::Campaign::ReferralStatus::TaggedSymbol)
            )
          end
          attr_reader :referral_status

          sig do
            params(
              referral_status: GrowsurfRuby::Campaign::ReferralStatus::OrSymbol
            ).void
          end
          attr_writer :referral_status

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          attr_reader :share_count

          sig { params(share_count: T::Hash[Symbol, Integer]).void }
          attr_writer :share_count

          sig { returns(T.nilable(String)) }
          attr_reader :share_url

          sig { params(share_url: String).void }
          attr_writer :share_url

          sig { returns(T.nilable(Integer)) }
          attr_reader :unique_impression_count

          sig { params(unique_impression_count: Integer).void }
          attr_writer :unique_impression_count

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :unsubscribed

          sig { params(unsubscribed: T::Boolean).void }
          attr_writer :unsubscribed

          sig do
            params(
              id: String,
              created_at: Integer,
              email: String,
              fingerprint: T.nilable(String),
              first_name: T.nilable(String),
              fraud_reason_code: String,
              fraud_risk_level:
                GrowsurfRuby::Campaign::FraudRiskLevel::OrSymbol,
              impression_count: Integer,
              invite_count: Integer,
              ip_address: T.nilable(String),
              is_winner: T::Boolean,
              last_name: T.nilable(String),
              metadata: T::Hash[Symbol, T.anything],
              monthly_rank: Integer,
              monthly_referral_count: Integer,
              monthly_referrals: T::Array[String],
              prev_monthly_rank: Integer,
              prev_monthly_referral_count: Integer,
              rank: Integer,
              referral_count: Integer,
              referrals: T::Array[String],
              referral_source: GrowsurfRuby::Campaign::ReferralSource::OrSymbol,
              referral_status: GrowsurfRuby::Campaign::ReferralStatus::OrSymbol,
              share_count: T::Hash[Symbol, Integer],
              share_url: String,
              unique_impression_count: Integer,
              unsubscribed: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            created_at: nil,
            email: nil,
            fingerprint: nil,
            first_name: nil,
            fraud_reason_code: nil,
            fraud_risk_level: nil,
            impression_count: nil,
            invite_count: nil,
            ip_address: nil,
            is_winner: nil,
            last_name: nil,
            # Shallow custom metadata object.
            metadata: nil,
            monthly_rank: nil,
            monthly_referral_count: nil,
            monthly_referrals: nil,
            prev_monthly_rank: nil,
            prev_monthly_referral_count: nil,
            rank: nil,
            referral_count: nil,
            referrals: nil,
            referral_source: nil,
            referral_status: nil,
            share_count: nil,
            share_url: nil,
            unique_impression_count: nil,
            unsubscribed: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Integer,
                email: String,
                fingerprint: T.nilable(String),
                first_name: T.nilable(String),
                fraud_reason_code: String,
                fraud_risk_level:
                  GrowsurfRuby::Campaign::FraudRiskLevel::TaggedSymbol,
                impression_count: Integer,
                invite_count: Integer,
                ip_address: T.nilable(String),
                is_winner: T::Boolean,
                last_name: T.nilable(String),
                metadata: T::Hash[Symbol, T.anything],
                monthly_rank: Integer,
                monthly_referral_count: Integer,
                monthly_referrals: T::Array[String],
                prev_monthly_rank: Integer,
                prev_monthly_referral_count: Integer,
                rank: Integer,
                referral_count: Integer,
                referrals: T::Array[String],
                referral_source:
                  GrowsurfRuby::Campaign::ReferralSource::TaggedSymbol,
                referral_status:
                  GrowsurfRuby::Campaign::ReferralStatus::TaggedSymbol,
                share_count: T::Hash[Symbol, Integer],
                share_url: String,
                unique_impression_count: Integer,
                unsubscribed: T::Boolean
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
