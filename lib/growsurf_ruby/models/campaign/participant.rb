# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#retrieve
      class CampaignParticipant < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute monthly_rank
        #
        #   @return [Integer]
        required :monthly_rank, Integer, api_name: :monthlyRank

        # @!attribute monthly_referral_count
        #
        #   @return [Integer]
        required :monthly_referral_count, Integer, api_name: :monthlyReferralCount

        # @!attribute rank
        #
        #   @return [Integer]
        required :rank, Integer

        # @!attribute referral_count
        #
        #   @return [Integer]
        required :referral_count, Integer, api_name: :referralCount

        # @!attribute rewards
        #
        #   @return [Array<GrowsurfRuby::Models::Campaign::ParticipantReward>]
        required :rewards, -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::ParticipantReward] }

        # @!attribute share_url
        #
        #   @return [String]
        required :share_url, String, api_name: :shareUrl

        # @!attribute all_matching_fraudsters
        #
        #   @return [Array<Hash{Symbol=>Object}>, nil]
        optional :all_matching_fraudsters,
                 GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]],
                 api_name: :allMatchingFraudsters

        # @!attribute created_at
        #
        #   @return [Integer, nil]
        optional :created_at, Integer, api_name: :createdAt

        # @!attribute fingerprint
        #
        #   @return [String, nil]
        optional :fingerprint, String, nil?: true

        # @!attribute first_name
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName, nil?: true

        # @!attribute fraud_reason_code
        #
        #   @return [String, nil]
        optional :fraud_reason_code, String, api_name: :fraudReasonCode

        # @!attribute fraud_risk_level
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::FraudRiskLevel, nil]
        optional :fraud_risk_level,
                 enum: -> {
                   GrowsurfRuby::Campaign::FraudRiskLevel
                 },
                 api_name: :fraudRiskLevel

        # @!attribute impression_count
        #
        #   @return [Integer, nil]
        optional :impression_count, Integer, api_name: :impressionCount

        # @!attribute invite_count
        #
        #   @return [Integer, nil]
        optional :invite_count, Integer, api_name: :inviteCount

        # @!attribute ip_address
        #
        #   @return [String, nil]
        optional :ip_address, String, api_name: :ipAddress, nil?: true

        # @!attribute is_new
        #
        #   @return [Boolean, nil]
        optional :is_new, GrowsurfRuby::Internal::Type::Boolean, api_name: :isNew

        # @!attribute is_winner
        #
        #   @return [Boolean, nil]
        optional :is_winner, GrowsurfRuby::Internal::Type::Boolean, api_name: :isWinner

        # @!attribute last_name
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName, nil?: true

        # @!attribute metadata
        #   Shallow custom metadata object.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]

        # @!attribute mobile_instance_id
        #   App-install scoped mobile identifier used for anti-fraud matching when provided
        #   by native mobile apps. Not stored when strict GDPR/CCPA mode is enabled.
        #
        #   @return [String, nil]
        optional :mobile_instance_id, String, api_name: :mobileInstanceId, nil?: true

        # @!attribute monthly_referrals
        #
        #   @return [Array<String>, nil]
        optional :monthly_referrals,
                 GrowsurfRuby::Internal::Type::ArrayOf[String],
                 api_name: :monthlyReferrals

        # @!attribute notes
        #
        #   @return [String, nil]
        optional :notes, String, nil?: true

        # @!attribute paypal_email_address
        #
        #   @return [String, nil]
        optional :paypal_email_address, String, api_name: :paypalEmailAddress

        # @!attribute prev_monthly_rank
        #
        #   @return [Integer, nil]
        optional :prev_monthly_rank, Integer, api_name: :prevMonthlyRank

        # @!attribute prev_monthly_referral_count
        #
        #   @return [Integer, nil]
        optional :prev_monthly_referral_count, Integer, api_name: :prevMonthlyReferralCount

        # @!attribute referrals
        #
        #   @return [Array<String>, nil]
        optional :referrals, GrowsurfRuby::Internal::Type::ArrayOf[String]

        # @!attribute referral_source
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ReferralSource, nil]
        optional :referral_source,
                 enum: -> {
                   GrowsurfRuby::Campaign::ReferralSource
                 },
                 api_name: :referralSource

        # @!attribute referral_status
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ReferralStatus, nil]
        optional :referral_status,
                 enum: -> {
                   GrowsurfRuby::Campaign::ReferralStatus
                 },
                 api_name: :referralStatus

        # @!attribute referred_by
        #
        #   @return [String, nil]
        optional :referred_by, String, api_name: :referredBy

        # @!attribute referrer
        #
        #   @return [GrowsurfRuby::Models::Campaign::CampaignParticipant::Referrer, nil]
        optional :referrer, -> { GrowsurfRuby::Campaign::CampaignParticipant::Referrer }, nil?: true

        # @!attribute share_count
        #
        #   @return [Hash{Symbol=>Integer}, nil]
        optional :share_count, GrowsurfRuby::Internal::Type::HashOf[Integer], api_name: :shareCount

        # @!attribute unique_impression_count
        #
        #   @return [Integer, nil]
        optional :unique_impression_count, Integer, api_name: :uniqueImpressionCount

        # @!attribute unread_commissions_count
        #
        #   @return [Integer, nil]
        optional :unread_commissions_count, Integer, api_name: :unreadCommissionsCount

        # @!attribute unread_payouts_count
        #
        #   @return [Integer, nil]
        optional :unread_payouts_count, Integer, api_name: :unreadPayoutsCount

        # @!attribute unsubscribed
        #
        #   @return [Boolean, nil]
        optional :unsubscribed, GrowsurfRuby::Internal::Type::Boolean

        # @!attribute vanity_keys
        #
        #   @return [Array<String>, nil]
        optional :vanity_keys, GrowsurfRuby::Internal::Type::ArrayOf[String], api_name: :vanityKeys

        # @!method initialize(id:, email:, monthly_rank:, monthly_referral_count:, rank:, referral_count:, rewards:, share_url:, all_matching_fraudsters: nil, created_at: nil, fingerprint: nil, first_name: nil, fraud_reason_code: nil, fraud_risk_level: nil, impression_count: nil, invite_count: nil, ip_address: nil, is_new: nil, is_winner: nil, last_name: nil, metadata: nil, mobile_instance_id: nil, monthly_referrals: nil, notes: nil, paypal_email_address: nil, prev_monthly_rank: nil, prev_monthly_referral_count: nil, referrals: nil, referral_source: nil, referral_status: nil, referred_by: nil, referrer: nil, share_count: nil, unique_impression_count: nil, unread_commissions_count: nil, unread_payouts_count: nil, unsubscribed: nil, vanity_keys: nil)
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::Campaign::CampaignParticipant} for more details.
        #
        #   @param id [String]
        #
        #   @param email [String]
        #
        #   @param monthly_rank [Integer]
        #
        #   @param monthly_referral_count [Integer]
        #
        #   @param rank [Integer]
        #
        #   @param referral_count [Integer]
        #
        #   @param rewards [Array<GrowsurfRuby::Models::Campaign::ParticipantReward>]
        #
        #   @param share_url [String]
        #
        #   @param all_matching_fraudsters [Array<Hash{Symbol=>Object}>]
        #
        #   @param created_at [Integer]
        #
        #   @param fingerprint [String, nil]
        #
        #   @param first_name [String, nil]
        #
        #   @param fraud_reason_code [String]
        #
        #   @param fraud_risk_level [Symbol, GrowsurfRuby::Models::Campaign::FraudRiskLevel]
        #
        #   @param impression_count [Integer]
        #
        #   @param invite_count [Integer]
        #
        #   @param ip_address [String, nil]
        #
        #   @param is_new [Boolean]
        #
        #   @param is_winner [Boolean]
        #
        #   @param last_name [String, nil]
        #
        #   @param metadata [Hash{Symbol=>Object}] Shallow custom metadata object.
        #
        #   @param mobile_instance_id [String, nil] App-install scoped mobile identifier used for anti-fraud matching when provided
        #
        #   @param monthly_referrals [Array<String>]
        #
        #   @param notes [String, nil]
        #
        #   @param paypal_email_address [String]
        #
        #   @param prev_monthly_rank [Integer]
        #
        #   @param prev_monthly_referral_count [Integer]
        #
        #   @param referrals [Array<String>]
        #
        #   @param referral_source [Symbol, GrowsurfRuby::Models::Campaign::ReferralSource]
        #
        #   @param referral_status [Symbol, GrowsurfRuby::Models::Campaign::ReferralStatus]
        #
        #   @param referred_by [String]
        #
        #   @param referrer [GrowsurfRuby::Models::Campaign::CampaignParticipant::Referrer, nil]
        #
        #   @param share_count [Hash{Symbol=>Integer}]
        #
        #   @param unique_impression_count [Integer]
        #
        #   @param unread_commissions_count [Integer]
        #
        #   @param unread_payouts_count [Integer]
        #
        #   @param unsubscribed [Boolean]
        #
        #   @param vanity_keys [Array<String>]

        # @see GrowsurfRuby::Models::Campaign::CampaignParticipant#referrer
        class Referrer < GrowsurfRuby::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #
          #   @return [Integer, nil]
          optional :created_at, Integer, api_name: :createdAt

          # @!attribute email
          #
          #   @return [String, nil]
          optional :email, String

          # @!attribute fingerprint
          #
          #   @return [String, nil]
          optional :fingerprint, String, nil?: true

          # @!attribute first_name
          #
          #   @return [String, nil]
          optional :first_name, String, api_name: :firstName, nil?: true

          # @!attribute fraud_reason_code
          #
          #   @return [String, nil]
          optional :fraud_reason_code, String, api_name: :fraudReasonCode

          # @!attribute fraud_risk_level
          #
          #   @return [Symbol, GrowsurfRuby::Models::Campaign::FraudRiskLevel, nil]
          optional :fraud_risk_level,
                   enum: -> {
                     GrowsurfRuby::Campaign::FraudRiskLevel
                   },
                   api_name: :fraudRiskLevel

          # @!attribute impression_count
          #
          #   @return [Integer, nil]
          optional :impression_count, Integer, api_name: :impressionCount

          # @!attribute invite_count
          #
          #   @return [Integer, nil]
          optional :invite_count, Integer, api_name: :inviteCount

          # @!attribute ip_address
          #
          #   @return [String, nil]
          optional :ip_address, String, api_name: :ipAddress, nil?: true

          # @!attribute is_winner
          #
          #   @return [Boolean, nil]
          optional :is_winner, GrowsurfRuby::Internal::Type::Boolean, api_name: :isWinner

          # @!attribute last_name
          #
          #   @return [String, nil]
          optional :last_name, String, api_name: :lastName, nil?: true

          # @!attribute metadata
          #   Shallow custom metadata object.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :metadata, GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]

          # @!attribute monthly_rank
          #
          #   @return [Integer, nil]
          optional :monthly_rank, Integer, api_name: :monthlyRank

          # @!attribute monthly_referral_count
          #
          #   @return [Integer, nil]
          optional :monthly_referral_count, Integer, api_name: :monthlyReferralCount

          # @!attribute monthly_referrals
          #
          #   @return [Array<String>, nil]
          optional :monthly_referrals,
                   GrowsurfRuby::Internal::Type::ArrayOf[String],
                   api_name: :monthlyReferrals

          # @!attribute prev_monthly_rank
          #
          #   @return [Integer, nil]
          optional :prev_monthly_rank, Integer, api_name: :prevMonthlyRank

          # @!attribute prev_monthly_referral_count
          #
          #   @return [Integer, nil]
          optional :prev_monthly_referral_count, Integer, api_name: :prevMonthlyReferralCount

          # @!attribute rank
          #
          #   @return [Integer, nil]
          optional :rank, Integer

          # @!attribute referral_count
          #
          #   @return [Integer, nil]
          optional :referral_count, Integer, api_name: :referralCount

          # @!attribute referrals
          #
          #   @return [Array<String>, nil]
          optional :referrals, GrowsurfRuby::Internal::Type::ArrayOf[String]

          # @!attribute referral_source
          #
          #   @return [Symbol, GrowsurfRuby::Models::Campaign::ReferralSource, nil]
          optional :referral_source,
                   enum: -> {
                     GrowsurfRuby::Campaign::ReferralSource
                   },
                   api_name: :referralSource

          # @!attribute referral_status
          #
          #   @return [Symbol, GrowsurfRuby::Models::Campaign::ReferralStatus, nil]
          optional :referral_status,
                   enum: -> {
                     GrowsurfRuby::Campaign::ReferralStatus
                   },
                   api_name: :referralStatus

          # @!attribute share_count
          #
          #   @return [Hash{Symbol=>Integer}, nil]
          optional :share_count, GrowsurfRuby::Internal::Type::HashOf[Integer], api_name: :shareCount

          # @!attribute share_url
          #
          #   @return [String, nil]
          optional :share_url, String, api_name: :shareUrl

          # @!attribute unique_impression_count
          #
          #   @return [Integer, nil]
          optional :unique_impression_count, Integer, api_name: :uniqueImpressionCount

          # @!attribute unsubscribed
          #
          #   @return [Boolean, nil]
          optional :unsubscribed, GrowsurfRuby::Internal::Type::Boolean

          # @!method initialize(id: nil, created_at: nil, email: nil, fingerprint: nil, first_name: nil, fraud_reason_code: nil, fraud_risk_level: nil, impression_count: nil, invite_count: nil, ip_address: nil, is_winner: nil, last_name: nil, metadata: nil, monthly_rank: nil, monthly_referral_count: nil, monthly_referrals: nil, prev_monthly_rank: nil, prev_monthly_referral_count: nil, rank: nil, referral_count: nil, referrals: nil, referral_source: nil, referral_status: nil, share_count: nil, share_url: nil, unique_impression_count: nil, unsubscribed: nil)
          #   @param id [String]
          #
          #   @param created_at [Integer]
          #
          #   @param email [String]
          #
          #   @param fingerprint [String, nil]
          #
          #   @param first_name [String, nil]
          #
          #   @param fraud_reason_code [String]
          #
          #   @param fraud_risk_level [Symbol, GrowsurfRuby::Models::Campaign::FraudRiskLevel]
          #
          #   @param impression_count [Integer]
          #
          #   @param invite_count [Integer]
          #
          #   @param ip_address [String, nil]
          #
          #   @param is_winner [Boolean]
          #
          #   @param last_name [String, nil]
          #
          #   @param metadata [Hash{Symbol=>Object}] Shallow custom metadata object.
          #
          #   @param monthly_rank [Integer]
          #
          #   @param monthly_referral_count [Integer]
          #
          #   @param monthly_referrals [Array<String>]
          #
          #   @param prev_monthly_rank [Integer]
          #
          #   @param prev_monthly_referral_count [Integer]
          #
          #   @param rank [Integer]
          #
          #   @param referral_count [Integer]
          #
          #   @param referrals [Array<String>]
          #
          #   @param referral_source [Symbol, GrowsurfRuby::Models::Campaign::ReferralSource]
          #
          #   @param referral_status [Symbol, GrowsurfRuby::Models::Campaign::ReferralStatus]
          #
          #   @param share_count [Hash{Symbol=>Integer}]
          #
          #   @param share_url [String]
          #
          #   @param unique_impression_count [Integer]
          #
          #   @param unsubscribed [Boolean]
        end
      end
    end
  end
end
