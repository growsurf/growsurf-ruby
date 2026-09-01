# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # Covered first milestones for one participant. Unknown history remains `nil` and
      # is paired with an explicit state and reason.
      class ParticipantActivationAnalytics < GrowsurfRuby::Internal::Type::BaseModel
        required :coverage_start_at, Integer, api_name: :coverageStartAt, nil?: true
        required :metric_contract_version, Integer, api_name: :metricContractVersion
        required :program_type, enum: -> { ProgramType }, api_name: :programType
        required :state, enum: -> { GrowsurfRuby::Models::AnalyticsAvailability }
        required :reason, enum: -> { GrowsurfRuby::Models::AnalyticsUnavailableReason }, nil?: true
        required :cohort, -> { Cohort }
        required :enrolled_as_advocate_at, Integer, api_name: :enrolledAsAdvocateAt, nil?: true
        required :milestones, -> { Milestones }

        module ProgramType
          extend GrowsurfRuby::Internal::Type::Enum

          REFERRAL = :REFERRAL
          AFFILIATE = :AFFILIATE
        end

        module AnchorField
          extend GrowsurfRuby::Internal::Type::Enum

          ENROLLED_AS_ADVOCATE_AT = :enrolledAsAdvocateAt
          APPROVED_AS_AFFILIATE_AT = :approvedAsAffiliateAt
        end

        class Cohort < GrowsurfRuby::Internal::Type::BaseModel
          required :anchor_field, enum: -> { AnchorField }, api_name: :anchorField
          required :anchor_at, Integer, api_name: :anchorAt, nil?: true
        end

        module ShareChannel
          extend GrowsurfRuby::Internal::Type::Enum

          EMAIL = :email
          FACEBOOK = :facebook
          TWITTER = :twitter
          LINKEDIN = :linkedin
          PINTEREST = :pinterest
          THREADS = :threads
          BLUESKY = :bluesky
          SMS = :sms
          MESSENGER = :messenger
          WHATSAPP = :whatsapp
          WECHAT = :wechat
          TELEGRAM = :telegram
          REDDIT = :reddit
          TUMBLR = :tumblr
          QRCODE = :qrcode
          COPY_REF_LINK = :copyRefLink
          IOS_NATIVE_SHARE = :iosNativeShare
          ANDROID_NATIVE_SHARE = :androidNativeShare
        end

        class Milestones < GrowsurfRuby::Internal::Type::BaseModel
          required :first_portal_viewed_at, Integer, api_name: :firstPortalViewedAt, nil?: true
          required :first_referral_link_copied_at, Integer, api_name: :firstReferralLinkCopiedAt, nil?: true
          required :first_share_at, Integer, api_name: :firstShareAt, nil?: true
          required :first_share_channel, enum: -> { ShareChannel }, api_name: :firstShareChannel, nil?: true
          required :first_unique_click_at, Integer, api_name: :firstUniqueClickAt, nil?: true
          required :first_lead_at, Integer, api_name: :firstLeadAt, nil?: true
          required :first_referral_at, Integer, api_name: :firstReferralAt, nil?: true
          required :first_reward_at, Integer, api_name: :firstRewardAt, nil?: true
          required :first_commission_at, Integer, api_name: :firstCommissionAt, nil?: true
          required :payout_setup_completed_at, Integer, api_name: :payoutSetupCompletedAt, nil?: true
        end
      end
    end
  end
end
