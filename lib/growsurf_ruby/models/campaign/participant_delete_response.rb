# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#delete
      class ParticipantDeleteResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute analytics_erasure
        #   Analytics erasure is pending. Do not repeat successful deletions.
        #   @return [GrowsurfRuby::Models::Campaign::PendingAnalyticsErasure, nil]
        optional :analytics_erasure,
                 -> { GrowsurfRuby::Models::Campaign::PendingAnalyticsErasure },
                 api_name: :analyticsErasure

        # @!attribute success
        #
        #   @return [Boolean]
        required :success, GrowsurfRuby::Internal::Type::Boolean

        # @!method initialize(success:, analytics_erasure: nil)
        #   @param success [Boolean]
      end
    end
  end
end
