# typed: strong

module GrowsurfRuby
  module Models
    class CampaignActivationAnalyticsResponse < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::CampaignActivationAnalyticsResponse,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Integer)) }
      attr_accessor :coverage_start_at

      sig { returns(Integer) }
      attr_accessor :metric_contract_version, :observation_window_days

      sig { returns(ProgramType::OrSymbol) }
      attr_accessor :program_type

      sig { returns(String) }
      attr_accessor :timezone, :portal_viewed_helper_text

      sig { returns(CohortInterval::OrSymbol) }
      attr_accessor :cohort_interval

      sig { returns(PortalViewedLabel::OrSymbol) }
      attr_accessor :portal_viewed_label

      sig { returns(CohortResult) }
      attr_accessor :aggregate

      sig { returns(T::Array[CohortResult]) }
      attr_accessor :cohorts

      sig { params(kwargs: T.untyped).returns(T.attached_class) }
      def self.new(**kwargs)
      end

      module ProgramType
        extend GrowsurfRuby::Internal::Type::Enum

        OrSymbol = T.type_alias { T.any(Symbol, String) }
        REFERRAL = T.let(:REFERRAL, Symbol)
        AFFILIATE = T.let(:AFFILIATE, Symbol)
        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      module CohortInterval
        extend GrowsurfRuby::Internal::Type::Enum

        OrSymbol = T.type_alias { T.any(Symbol, String) }
        DAY = T.let(:day, Symbol)
        WEEK = T.let(:week, Symbol)
        MONTH = T.let(:month, Symbol)
        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      module PortalViewedLabel
        extend GrowsurfRuby::Internal::Type::Enum

        OrSymbol = T.type_alias { T.any(Symbol, String) }
        REFERRAL = T.let(:"Referral portal viewed", Symbol)
        AFFILIATE = T.let(:"Affiliate portal viewed", Symbol)
        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      module StageKey
        extend GrowsurfRuby::Internal::Type::Enum

        OrSymbol = T.type_alias { T.any(Symbol, String) }
        ELIGIBLE = T.let(:ELIGIBLE, Symbol)
        PORTAL_VIEWED = T.let(:PORTAL_VIEWED, Symbol)
        SHARE_ACTION = T.let(:SHARE_ACTION, Symbol)
        UNIQUE_REFERRAL_VISIT = T.let(:UNIQUE_REFERRAL_VISIT, Symbol)
        LEAD = T.let(:LEAD, Symbol)
        CREDITED_REFERRAL = T.let(:CREDITED_REFERRAL, Symbol)
        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      module StalledSegmentKey
        extend GrowsurfRuby::Internal::Type::Enum

        OrSymbol = T.type_alias { T.any(Symbol, String) }
        ELIGIBLE_NO_PORTAL_VIEW = T.let(:ELIGIBLE_NO_PORTAL_VIEW, Symbol)
        PORTAL_VIEWED_NO_SHARE_ACTION =
          T.let(:PORTAL_VIEWED_NO_SHARE_ACTION, Symbol)
        SHARED_NO_UNIQUE_REFERRAL_VISIT =
          T.let(:SHARED_NO_UNIQUE_REFERRAL_VISIT, Symbol)
        UNIQUE_VISIT_NO_LEAD = T.let(:UNIQUE_VISIT_NO_LEAD, Symbol)
        LEAD_NO_CREDITED_REFERRAL = T.let(:LEAD_NO_CREDITED_REFERRAL, Symbol)
        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      module ImprovementAreaKey
        extend GrowsurfRuby::Internal::Type::Enum

        OrSymbol = T.type_alias { T.any(Symbol, String) }
        PORTAL_ACCESS = T.let(:PORTAL_ACCESS, Symbol)
        SHARING_EXPERIENCE = T.let(:SHARING_EXPERIENCE, Symbol)
        SHARE_EFFECTIVENESS = T.let(:SHARE_EFFECTIVENESS, Symbol)
        VISITOR_SIGNUP = T.let(:VISITOR_SIGNUP, Symbol)
        ATTRIBUTION_AND_QUALIFICATION =
          T.let(:ATTRIBUTION_AND_QUALIFICATION, Symbol)
        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      module AnchorField
        extend GrowsurfRuby::Internal::Type::Enum

        OrSymbol = T.type_alias { T.any(Symbol, String) }
        ENROLLED_AS_ADVOCATE_AT = T.let(:enrolledAsAdvocateAt, Symbol)
        APPROVED_AS_AFFILIATE_AT = T.let(:approvedAsAffiliateAt, Symbol)
        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Stage < GrowsurfRuby::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(Stage, GrowsurfRuby::Internal::AnyHash) }
        sig { returns(StageKey::OrSymbol) }
        attr_accessor :key

        sig { returns(Integer) }
        attr_accessor :count

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate_from_prior,
                      :conversion_rate_from_eligible,
                      :drop_off_rate,
                      :median_time_to_stage_ms

        sig { returns(T.nilable(Integer)) }
        attr_accessor :drop_off_count

        sig { returns(T.nilable(StalledSegmentKey::OrSymbol)) }
        attr_accessor :stalled_segment_key

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class StageCounts < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(StageCounts, GrowsurfRuby::Internal::AnyHash) }
        sig { returns(Integer) }
        attr_accessor :eligible,
                      :portal_viewed,
                      :share_action,
                      :unique_referral_visit,
                      :lead,
                      :credited_referral

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class StalledSegment < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(StalledSegment, GrowsurfRuby::Internal::AnyHash)
          end
        sig { returns(StalledSegmentKey::OrSymbol) }
        attr_accessor :key

        sig { returns(StageKey::OrSymbol) }
        attr_accessor :from_stage, :to_stage

        sig { returns(Integer) }
        attr_accessor :count

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class OutcomeCount < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(OutcomeCount, GrowsurfRuby::Internal::AnyHash) }
        sig { returns(Integer) }
        attr_accessor :count

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class Outcomes < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Outcomes, GrowsurfRuby::Internal::AnyHash) }
        sig { returns(T.nilable(OutcomeCount)) }
        attr_accessor :first_reward, :first_commission, :payout_setup_completed

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class LargestDrop < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(LargestDrop, GrowsurfRuby::Internal::AnyHash) }
        sig { returns(String) }
        attr_accessor :from_stage,
                      :to_stage,
                      :stalled_segment_key,
                      :improvement_area

        sig { returns(Integer) }
        attr_accessor :count

        sig { returns(Float) }
        attr_accessor :rate

        sig { returns(ImprovementAreaKey::OrSymbol) }
        attr_accessor :improvement_area_key

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class CohortBounds < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(CohortBounds, GrowsurfRuby::Internal::AnyHash) }
        sig { returns(Integer) }
        attr_accessor :from, :to, :matured_at, :as_of

        sig { returns(T.nilable(Integer)) }
        attr_accessor :effective_from

        sig { returns(AnchorField::OrSymbol) }
        attr_accessor :anchor_field

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end

      class CohortResult < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(CohortResult, GrowsurfRuby::Internal::AnyHash) }
        sig { returns(GrowsurfRuby::Models::AnalyticsAvailability::OrSymbol) }
        attr_accessor :state

        sig do
          returns(
            T.nilable(
              GrowsurfRuby::Models::AnalyticsUnavailableReason::OrSymbol
            )
          )
        end
        attr_accessor :reason

        sig { returns(CohortBounds) }
        attr_accessor :cohort

        sig { returns(T.nilable(T::Array[Stage])) }
        attr_accessor :strict_stages

        sig { returns(T.nilable(StageCounts)) }
        attr_accessor :raw_stage_counts

        sig { returns(T.nilable(T::Array[StalledSegment])) }
        attr_accessor :stalled_segments

        sig { returns(T.nilable(Outcomes)) }
        attr_accessor :outcomes

        sig { returns(T.nilable(LargestDrop)) }
        attr_accessor :largest_drop

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end
      end
    end
  end
end
