# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#create
    class CampaignCreateParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      # @!attribute type
      #
      #   @return [Symbol, GrowsurfRuby::Models::CampaignCreateParams::Type]
      required :type, enum: -> { GrowsurfRuby::CampaignCreateParams::Type }

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

      # @!attribute goal
      #
      #   @return [String, nil]
      optional :goal, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute options
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :options, GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]

      # @!attribute rewards
      #
      #   @return [Array<GrowsurfRuby::Models::Campaign::RewardCreateParams>, nil]
      optional :rewards,
               -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::RewardCreateParams] }

      # @!method initialize(type:, company_logo_image_url: nil, company_name: nil, currency_iso: nil, goal: nil, name: nil, options: nil, rewards: nil, request_options: {})
      #   @param type [Symbol, GrowsurfRuby::Models::CampaignCreateParams::Type]
      #
      #   @param company_logo_image_url [String]
      #
      #   @param company_name [String]
      #
      #   @param currency_iso [String]
      #
      #   @param goal [String]
      #
      #   @param name [String]
      #
      #   @param options [Hash{Symbol=>Object}]
      #
      #   @param rewards [Array<GrowsurfRuby::Models::Campaign::RewardCreateParams>]
      #
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

      # @see GrowsurfRuby::Models::CampaignCreateParams#type
      module Type
        extend GrowsurfRuby::Internal::Type::Enum

        REFERRAL = :REFERRAL
        AFFILIATE = :AFFILIATE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
