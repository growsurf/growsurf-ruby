# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#list_affiliate_invites
    class AffiliateInviteListResponse < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute invites
      #   One page of the program's invites, newest first.
      #
      #   @return [Array<GrowsurfRuby::Models::AffiliateInvite>]
      required :invites, -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::AffiliateInvite] }

      # @!attribute total
      #   Total number of invites matching the filter.
      #
      #   @return [Integer]
      required :total, Integer

      # @!attribute limit
      #   The page size used.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   The offset this page started at.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(invites:, total:, limit: nil, offset: nil)
      #   @param invites [Array<GrowsurfRuby::Models::AffiliateInvite>] One page of the program's invites, newest first.
      #
      #   @param total [Integer] Total number of invites matching the filter.
      #
      #   @param limit [Integer] The page size used.
      #
      #   @param offset [Integer] The offset this page started at.
    end
  end
end
