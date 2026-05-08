# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#list
    class CampaignListResponse < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute campaigns
      #
      #   @return [Array<GrowsurfRuby::Models::CampaignAPI>]
      required :campaigns, -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::CampaignAPI] }

      # @!method initialize(campaigns:)
      #   @param campaigns [Array<GrowsurfRuby::Models::CampaignAPI>]
    end
  end
end
