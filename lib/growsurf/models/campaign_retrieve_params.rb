# frozen_string_literal: true

module Growsurf
  module Models
    # @see Growsurf::Resources::Campaign#retrieve
    class CampaignRetrieveParams < Growsurf::Internal::Type::BaseModel
      extend Growsurf::Internal::Type::RequestParameters::Converter
      include Growsurf::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:, request_options: {})
      #   @param id [String]
      #   @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
