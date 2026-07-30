# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#retrieve_affiliate_application
    class CampaignRetrieveAffiliateApplicationParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute application_id
      #
      #   @return [String]
      required :application_id, String

      # @!method initialize(id:, application_id:, request_options: {})
      #   @param id [String]
      #   @param application_id [String]
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
