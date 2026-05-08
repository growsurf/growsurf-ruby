# frozen_string_literal: true

module Growsurf
  module Models
    # @see Growsurf::Resources::Campaign#list_participants
    class CampaignListParticipantsParams < Growsurf::Internal::Type::BaseModel
      extend Growsurf::Internal::Type::RequestParameters::Converter
      include Growsurf::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute limit
      #   Number of results to return. Maximum 100.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute next_id
      #   ID to start the next paged result set with.
      #
      #   @return [String, nil]
      optional :next_id, String

      # @!method initialize(id:, limit: nil, next_id: nil, request_options: {})
      #   @param id [String]
      #
      #   @param limit [Integer] Number of results to return. Maximum 100.
      #
      #   @param next_id [String] ID to start the next paged result set with.
      #
      #   @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
