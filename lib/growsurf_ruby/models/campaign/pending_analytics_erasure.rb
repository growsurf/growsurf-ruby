# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      class PendingAnalyticsErasure < GrowsurfRuby::Internal::Type::BaseModel
        # Analytics erasure has been accepted but is not confirmed complete.
        # @return [String]
        required :status, String

        # Opaque reference for support inquiries about this analytics erasure.
        # @return [String]
        required :operation_id, String, api_name: :operationId
      end
    end
  end
end
