# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#retrieve_activation_analytics
    class CampaignRetrieveActivationAnalyticsParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      required :id, String
      optional :cohort_from, Integer
      optional :cohort_to, Integer
      optional :cohort_interval,
               enum: -> { GrowsurfRuby::Models::CampaignRetrieveActivationAnalyticsParams::CohortInterval }
      optional :observation_window_days,
               enum: -> { GrowsurfRuby::Models::CampaignRetrieveActivationAnalyticsParams::ObservationWindowDays }
      optional :timezone, String

      module CohortInterval
        extend GrowsurfRuby::Internal::Type::Enum

        DAY = :day
        WEEK = :week
        MONTH = :month
      end

      module ObservationWindowDays
        extend GrowsurfRuby::Internal::Type::Enum

        SEVEN = 7
        THIRTY = 30
      end
    end
  end
end
