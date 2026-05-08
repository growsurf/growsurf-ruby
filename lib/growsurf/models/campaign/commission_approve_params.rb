# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      # @see Growsurf::Resources::Campaign::Commission#approve
      class CommissionApproveParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute commission_id
        #
        #   @return [String]
        required :commission_id, String

        # @!method initialize(id:, commission_id:, request_options: {})
        #   @param id [String]
        #   @param commission_id [String]
        #   @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
