# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#list_affiliate_applications
    class AffiliateApplicationListResponse < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute applications
      #   One page of the program's applications, newest first.
      #
      #   @return [Array<GrowsurfRuby::Models::AffiliateApplication>]
      required :applications,
               -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::AffiliateApplication] }

      # @!attribute total
      #   Total number of applications matching the filter.
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

      # @!method initialize(applications:, total:, limit: nil, offset: nil)
      #   @param applications [Array<GrowsurfRuby::Models::AffiliateApplication>] One page of the program's applications, newest first.
      #
      #   @param total [Integer] Total number of applications matching the filter.
      #
      #   @param limit [Integer] The page size used.
      #
      #   @param offset [Integer] The offset this page started at.
    end
  end
end
