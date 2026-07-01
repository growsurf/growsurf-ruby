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

      # @!attribute currency_iso
      #
      #   @return [String, nil]
      optional :currency_iso, String, api_name: :currencyISO

      # @!attribute design
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :design, GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]

      # @!attribute emails
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :emails, GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]

      # @!attribute goal
      #
      #   @return [String, nil]
      optional :goal, String

      # @!attribute installation
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :installation, GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute notifications
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :notifications, GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]

      # @!attribute options
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :options, GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]

      # @!attribute status
      #
      #   @return [Symbol, GrowsurfRuby::Models::CampaignUpdateParams::Status, nil]
      optional :status, enum: -> { GrowsurfRuby::CampaignUpdateParams::Status }

      # @!method initialize(id:, company_logo_image_url: nil, company_name: nil, currency_iso: nil, design: nil, emails: nil, goal: nil, installation: nil, name: nil, notifications: nil, options: nil, status: nil, request_options: {})
      #   @param id [String]
      #
      #   @param company_logo_image_url [String]
      #
      #   @param company_name [String]
      #
      #   @param currency_iso [String]
      #
      #   @param design [Hash{Symbol=>Object}]
      #
      #   @param emails [Hash{Symbol=>Object}]
      #
      #   @param goal [String]
      #
      #   @param installation [Hash{Symbol=>Object}]
      #
      #   @param name [String]
      #
      #   @param notifications [Hash{Symbol=>Object}]
      #
      #   @param options [Hash{Symbol=>Object}]
      #
      #   @param status [Symbol, GrowsurfRuby::Models::CampaignUpdateParams::Status]
      #
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

      # @see GrowsurfRuby::Models::CampaignUpdateParams#status
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        DRAFT = :DRAFT
        PENDING = :PENDING
        IN_PROGRESS = :IN_PROGRESS
        COMPLETE = :COMPLETE
        CANCELLED = :CANCELLED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
