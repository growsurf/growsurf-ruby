# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#create_affiliate_invite
    class CampaignCreateAffiliateInviteParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute email
      #   Valid email address to invite. Maximum 255 characters.
      #
      #   @return [String]
      required :email, String

      # @!attribute first_name
      #   Invitee first name, used in the invite email. Maximum 255 characters.
      #
      #   @return [String, nil]
      optional :first_name, String, api_name: :firstName

      # @!attribute last_name
      #   Invitee last name. Maximum 255 characters.
      #
      #   @return [String, nil]
      optional :last_name, String, api_name: :lastName

      # @!method initialize(id:, email:, first_name: nil, last_name: nil, request_options: {})
      #   @param id [String]
      #
      #   @param email [String] Valid email address to invite. Maximum 255 characters.
      #
      #   @param first_name [String] Invitee first name, used in the invite email. Maximum 255 characters.
      #
      #   @param last_name [String] Invitee last name. Maximum 255 characters.
      #
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
