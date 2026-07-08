# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#update
    class CampaignUpdateParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute company_logo_image_url
      #
      #   @return [String, nil]
      optional :company_logo_image_url, String, api_name: :companyLogoImageUrl

      # @!attribute company_name
      #
      #   @return [String, nil]
      optional :company_name, String, api_name: :companyName

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute status
      #
      #   @return [Symbol, GrowsurfRuby::Models::CampaignUpdateParams::Status, nil]
      optional :status, enum: -> { GrowsurfRuby::CampaignUpdateParams::Status }

      # @!method initialize(id:, company_logo_image_url: nil, company_name: nil, name: nil, status: nil, request_options: {})
      #   @param id [String]
      #
      #   @param company_logo_image_url [String]
      #
      #   @param company_name [String]
      #
      #   @param name [String]
      #
      #   @param status [Symbol, GrowsurfRuby::Models::CampaignUpdateParams::Status]
      #
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

      # @see GrowsurfRuby::Models::CampaignUpdateParams#status
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        IN_PROGRESS = :IN_PROGRESS
        COMPLETE = :COMPLETE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
