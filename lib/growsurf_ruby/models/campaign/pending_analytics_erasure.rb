# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      class PendingAnalyticsErasure < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute status
        #   Analytics erasure has been accepted but is not confirmed complete.
        #
        #   @return [String]
        required :status, String

        # @!attribute operation_id
        #   Opaque reference for support inquiries about this analytics erasure.
        #
        #   @return [String]
        required :operation_id, String, api_name: :operationId

        # @!method initialize(status:, operation_id:)
        #   @param status [String] Analytics erasure has been accepted but is not confirmed complete.
        #
        #   @param operation_id [String] Opaque reference for support inquiries about this analytics erasure.
      end
    end
  end
end
