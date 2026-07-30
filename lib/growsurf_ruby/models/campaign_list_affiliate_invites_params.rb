# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#list_affiliate_invites
    class CampaignListAffiliateInvitesParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute limit
      #   How many invites to return per page (1-100).
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   Offset number used to skip through a result set.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute status
      #   Only return invites with this status.
      #
      #   @return [Symbol, GrowsurfRuby::Models::CampaignListAffiliateInvitesParams::Status, nil]
      optional :status, enum: -> { GrowsurfRuby::CampaignListAffiliateInvitesParams::Status }

      # @!method initialize(id:, limit: nil, offset: nil, status: nil, request_options: {})
      #   @param id [String]
      #
      #   @param limit [Integer] How many invites to return per page (1-100).
      #
      #   @param offset [Integer] Offset number used to skip through a result set.
      #
      #   @param status [Symbol, GrowsurfRuby::Models::CampaignListAffiliateInvitesParams::Status] Only return invites with this status.
      #
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

      # Only return invites with this status.
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        PENDING = :PENDING
        ACCEPTED = :ACCEPTED
        EXPIRED = :EXPIRED
        REVOKED = :REVOKED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
