# frozen_string_literal: true

module Growsurf
  module Models
    # @see Growsurf::Resources::Campaign#list
    class CampaignListResponse < Growsurf::Internal::Type::BaseModel
      # @!attribute campaigns
      #
      #   @return [Array<Growsurf::Models::CampaignAPI>]
      required :campaigns, -> { Growsurf::Internal::Type::ArrayOf[Growsurf::CampaignAPI] }

      # @!method initialize(campaigns:)
      #   @param campaigns [Array<Growsurf::Models::CampaignAPI>]
    end
  end
end
