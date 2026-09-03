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
      #   What the program is for, which seeds share settings that suit that audience.
      #   Programs selling to businesses (`CUSTOMERS`, `USERS`, `B2B_SAAS_SELF_SERVICE`,
      #   `B2B_SAAS_ENTERPRISE`) start with the LinkedIn share button visible; consumer,
      #   financial, education, insurance, newsletter, and waitlist programs
      #   (`B2C_SUBSCRIPTIONS`, `FINANCIAL_SERVICES`, `ONLINE_EDUCATION`,
      #   `ONLINE_INSURANCE`, `SUBSCRIBERS`, `WAITLIST`) start with it hidden. Omit it and
      #   every share button keeps its standard default. Set only when the program is
      #   created; it is not accepted on update.
      #
      #   @return [Symbol, GrowsurfRuby::Models::CampaignCreateParams::Goal, nil]
      optional :goal, enum: -> { GrowsurfRuby::CampaignCreateParams::Goal }

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute rewards
      #
      #   @return [Array<GrowsurfRuby::Models::Campaign::RewardCreateParams>, nil]
      optional :rewards,
               -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::RewardCreateParams] }

      # @!method initialize(type:, company_logo_image_url: nil, company_name: nil, currency_iso: nil, goal: nil, name: nil, rewards: nil, request_options: {})
      #   @param type [Symbol, GrowsurfRuby::Models::CampaignCreateParams::Type]
      #
      #   @param company_logo_image_url [String]
      #
      #   @param company_name [String]
      #
      #   @param currency_iso [String]
      #
      #   @param goal [Symbol, GrowsurfRuby::Models::CampaignCreateParams::Goal] What the program is for, which seeds share settings that suit that audience.
      #
      #   @param name [String]
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

      # What the program is for, which seeds share settings that suit that audience.
      #
      # @see GrowsurfRuby::Models::CampaignCreateParams#goal
      module Goal
        extend GrowsurfRuby::Internal::Type::Enum

        CUSTOMERS = :CUSTOMERS
        USERS = :USERS
        SUBSCRIBERS = :SUBSCRIBERS
        WAITLIST = :WAITLIST
        B2B_SAAS_SELF_SERVICE = :B2B_SAAS_SELF_SERVICE
        B2B_SAAS_ENTERPRISE = :B2B_SAAS_ENTERPRISE
        B2C_SUBSCRIPTIONS = :B2C_SUBSCRIPTIONS
        FINANCIAL_SERVICES = :FINANCIAL_SERVICES
        ONLINE_EDUCATION = :ONLINE_EDUCATION
        ONLINE_INSURANCE = :ONLINE_INSURANCE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
