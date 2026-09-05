# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # Activation cohorts for eligible participants in a referral or affiliate program.
    class CampaignActivationAnalyticsResponse < GrowsurfRuby::Internal::Type::BaseModel
      required :coverage_start_at, Integer, api_name: :coverageStartAt, nil?: true
      required :metric_contract_version, Integer, api_name: :metricContractVersion
      required :program_type,
               enum: -> { GrowsurfRuby::Models::CampaignActivationAnalyticsResponse::ProgramType },
               api_name: :programType
      required :timezone, String
      required :cohort_interval,
               enum: -> { GrowsurfRuby::Models::CampaignActivationAnalyticsResponse::CohortInterval },
               api_name: :cohortInterval
      required :observation_window_days, Integer, api_name: :observationWindowDays
      required :portal_viewed_label,
               enum: -> { GrowsurfRuby::Models::CampaignActivationAnalyticsResponse::PortalViewedLabel },
               api_name: :portalViewedLabel
      required :portal_viewed_helper_text, String, api_name: :portalViewedHelperText
      required :aggregate, -> { GrowsurfRuby::Models::CampaignActivationAnalyticsResponse::CohortResult }
      required :cohorts,
               -> {
                 GrowsurfRuby::Internal::Type::ArrayOf[
                   GrowsurfRuby::Models::CampaignActivationAnalyticsResponse::CohortResult
                 ]
               }

      module ProgramType
        extend GrowsurfRuby::Internal::Type::Enum

        REFERRAL = :REFERRAL
        AFFILIATE = :AFFILIATE
      end

      module CohortInterval
        extend GrowsurfRuby::Internal::Type::Enum

        DAY = :day
        WEEK = :week
        MONTH = :month
      end

      module PortalViewedLabel
        extend GrowsurfRuby::Internal::Type::Enum

        REFERRAL = :"Referral portal viewed"
        AFFILIATE = :"Affiliate portal viewed"
      end

      module StageKey
        extend GrowsurfRuby::Internal::Type::Enum

        ELIGIBLE = :ELIGIBLE
        PORTAL_VIEWED = :PORTAL_VIEWED
        SHARE_ACTION = :SHARE_ACTION
        UNIQUE_REFERRAL_VISIT = :UNIQUE_REFERRAL_VISIT
        LEAD = :LEAD
        CREDITED_REFERRAL = :CREDITED_REFERRAL
      end

      module StalledSegmentKey
        extend GrowsurfRuby::Internal::Type::Enum

        ELIGIBLE_NO_PORTAL_VIEW = :ELIGIBLE_NO_PORTAL_VIEW
        PORTAL_VIEWED_NO_SHARE_ACTION = :PORTAL_VIEWED_NO_SHARE_ACTION
        SHARED_NO_UNIQUE_REFERRAL_VISIT = :SHARED_NO_UNIQUE_REFERRAL_VISIT
        UNIQUE_VISIT_NO_LEAD = :UNIQUE_VISIT_NO_LEAD
        LEAD_NO_CREDITED_REFERRAL = :LEAD_NO_CREDITED_REFERRAL
      end

      module StalledSegmentFromStage
        extend GrowsurfRuby::Internal::Type::Enum

        ELIGIBLE = :ELIGIBLE
        PORTAL_VIEWED = :PORTAL_VIEWED
        SHARE_ACTION = :SHARE_ACTION
        UNIQUE_REFERRAL_VISIT = :UNIQUE_REFERRAL_VISIT
        LEAD = :LEAD
      end

      module StalledSegmentToStage
        extend GrowsurfRuby::Internal::Type::Enum

        PORTAL_VIEWED = :PORTAL_VIEWED
        SHARE_ACTION = :SHARE_ACTION
        UNIQUE_REFERRAL_VISIT = :UNIQUE_REFERRAL_VISIT
        LEAD = :LEAD
        CREDITED_REFERRAL = :CREDITED_REFERRAL
      end

      class Stage < GrowsurfRuby::Internal::Type::BaseModel
        required :key, enum: -> { StageKey }
        required :count, Integer
        required :conversion_rate_from_prior, Float, api_name: :conversionRateFromPrior, nil?: true
        required :conversion_rate_from_eligible, Float, api_name: :conversionRateFromEligible, nil?: true
        required :drop_off_count, Integer, api_name: :dropOffCount, nil?: true
        required :drop_off_rate, Float, api_name: :dropOffRate, nil?: true
        required :median_time_to_stage_ms, Float, api_name: :medianTimeToStageMs, nil?: true
        required :stalled_segment_key,
                 enum: -> { StalledSegmentKey },
                 api_name: :stalledSegmentKey,
                 nil?: true
      end

      class StageCounts < GrowsurfRuby::Internal::Type::BaseModel
        required :eligible, Integer, api_name: :ELIGIBLE
        required :portal_viewed, Integer, api_name: :PORTAL_VIEWED
        required :share_action, Integer, api_name: :SHARE_ACTION
        required :unique_referral_visit, Integer, api_name: :UNIQUE_REFERRAL_VISIT
        required :lead, Integer, api_name: :LEAD
        required :credited_referral, Integer, api_name: :CREDITED_REFERRAL
      end

      class StalledSegment < GrowsurfRuby::Internal::Type::BaseModel
        required :key, enum: -> { StalledSegmentKey }
        required :from_stage, enum: -> { StalledSegmentFromStage }, api_name: :fromStage
        required :to_stage, enum: -> { StalledSegmentToStage }, api_name: :toStage
        required :count, Integer
      end

      class OutcomeCount < GrowsurfRuby::Internal::Type::BaseModel
        required :count, Integer
      end

      class Outcomes < GrowsurfRuby::Internal::Type::BaseModel
        optional :first_reward, -> { OutcomeCount }, api_name: :FIRST_REWARD
        optional :first_commission, -> { OutcomeCount }, api_name: :FIRST_COMMISSION
        optional :payout_setup_completed, -> { OutcomeCount }, api_name: :PAYOUT_SETUP_COMPLETED
      end

      module ImprovementAreaKey
        extend GrowsurfRuby::Internal::Type::Enum

        PORTAL_ACCESS = :PORTAL_ACCESS
        SHARING_EXPERIENCE = :SHARING_EXPERIENCE
        SHARE_EFFECTIVENESS = :SHARE_EFFECTIVENESS
        VISITOR_SIGNUP = :VISITOR_SIGNUP
        ATTRIBUTION_AND_QUALIFICATION = :ATTRIBUTION_AND_QUALIFICATION
      end

      class LargestDrop < GrowsurfRuby::Internal::Type::BaseModel
        required :from_stage, String, api_name: :fromStage
        required :to_stage, String, api_name: :toStage
        required :count, Integer
        required :rate, Float
        required :stalled_segment_key, String, api_name: :stalledSegmentKey
        required :improvement_area_key, enum: -> { ImprovementAreaKey }, api_name: :improvementAreaKey
        required :improvement_area, String, api_name: :improvementArea
      end

      module AnchorField
        extend GrowsurfRuby::Internal::Type::Enum

        ENROLLED_AS_ADVOCATE_AT = :enrolledAsAdvocateAt
        APPROVED_AS_AFFILIATE_AT = :approvedAsAffiliateAt
      end

      class CohortBounds < GrowsurfRuby::Internal::Type::BaseModel
        required :from, Integer
        required :to, Integer
        required :effective_from, Integer, api_name: :effectiveFrom, nil?: true
        required :matured_at, Integer, api_name: :maturedAt
        required :as_of, Integer, api_name: :asOf
        required :anchor_field, enum: -> { AnchorField }, api_name: :anchorField
      end

      class CohortResult < GrowsurfRuby::Internal::Type::BaseModel
        required :state, enum: -> { GrowsurfRuby::Models::AnalyticsAvailability }
        required :reason, enum: -> { GrowsurfRuby::Models::AnalyticsUnavailableReason }, nil?: true
        required :cohort, -> { CohortBounds }
        required :strict_stages,
                 -> { GrowsurfRuby::Internal::Type::ArrayOf[Stage] },
                 api_name: :strictStages,
                 nil?: true
        required :raw_stage_counts, -> { StageCounts }, api_name: :rawStageCounts, nil?: true
        required :stalled_segments,
                 -> { GrowsurfRuby::Internal::Type::ArrayOf[StalledSegment] },
                 api_name: :stalledSegments,
                 nil?: true
        required :outcomes, -> { Outcomes }, nil?: true
        required :largest_drop, -> { LargestDrop }, api_name: :largestDrop, nil?: true
      end
    end
  end
end
