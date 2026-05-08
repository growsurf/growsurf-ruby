# frozen_string_literal: true

module Growsurf
  module Models
    # @see Growsurf::Resources::Campaign#list
    class CampaignListParams < Growsurf::Internal::Type::BaseModel
      extend Growsurf::Internal::Type::RequestParameters::Converter
      include Growsurf::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
