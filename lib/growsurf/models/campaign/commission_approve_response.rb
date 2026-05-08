# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      # @see Growsurf::Resources::Campaign::Commission#approve
      class CommissionApproveResponse < Growsurf::Internal::Type::BaseModel
        # @!attribute success
        #
        #   @return [Boolean]
        required :success, Growsurf::Internal::Type::Boolean

        # @!method initialize(success:)
        #   @param success [Boolean]
      end
    end
  end
end
