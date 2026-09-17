# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#list_participants
    class CampaignListParticipantsParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute limit
      #   Number of results to return. Maximum 100.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute metadata
      #   Return only participants whose metadata matches every given key and value
      #   exactly. Send each pair as `metadata[key]=value`. Up to 3 keys per request.
      #   Values compare as strings, which is how metadata is stored.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, GrowsurfRuby::Internal::Type::HashOf[String]

      # @!attribute next_id
      #   ID to start the next paged result set with.
      #
      #   @return [String, nil]
      optional :next_id, String

      # @!method initialize(id:, limit: nil, metadata: nil, next_id: nil, request_options: {})
      #   @param id [String]
      #
      #   @param limit [Integer] Number of results to return. Maximum 100.
      #
      #   @param metadata [Hash{Symbol=>String}] Return only participants whose metadata matches every given key and value exac
      #
      #   @param next_id [String] ID to start the next paged result set with.
      #
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
