# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # Accepted-send and lifecycle metrics for program emails in a requested window.
    class EmailAnalytics < GrowsurfRuby::Internal::Type::BaseModel
      required :sent, Integer
      required :delivered, Integer
      required :opened, Integer
      required :clicked, Integer
      required :bounced, Integer
      required :spam_complaints, Integer, api_name: :spamComplaints
      required :delivery_rate, Float, api_name: :deliveryRate
      required :open_rate, Float, api_name: :openRate
      required :click_rate, Float, api_name: :clickRate
      required :bounce_rate, Float, api_name: :bounceRate
      required :by_type,
               -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Models::EmailAnalytics::ByType] },
               api_name: :byType
      required :coverage_start_date, Integer, api_name: :coverageStartDate, nil?: true
      required :is_partial, GrowsurfRuby::Internal::Type::Boolean, api_name: :isPartial

      class Counts < GrowsurfRuby::Internal::Type::BaseModel
        required :sent, Integer
        required :delivered, Integer
        required :opened, Integer
        required :clicked, Integer
        required :bounced, Integer
        required :spam_complaints, Integer, api_name: :spamComplaints
      end

      class ByType < Counts
        required :email_type, String, api_name: :emailType
        required :delivery_rate, Float, api_name: :deliveryRate
        required :open_rate, Float, api_name: :openRate
        required :click_rate, Float, api_name: :clickRate
        required :bounce_rate, Float, api_name: :bounceRate
      end
    end
  end
end
