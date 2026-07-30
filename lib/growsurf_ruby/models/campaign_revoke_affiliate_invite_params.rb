# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#revoke_affiliate_invite
    class CampaignRevokeAffiliateInviteParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute invite_id
      #
      #   @return [String]
      required :invite_id, String

      # @!method initialize(id:, invite_id:, request_options: {})
      #   @param id [String]
      #   @param invite_id [String]
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
