# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#list_payouts
    class CampaignListPayoutsParams < GrowsurfRuby::Internal::Type::BaseModel
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

      # @!attribute next_id
      #   ID to start the next paged result set with.
      #
      #   @return [String, nil]
      optional :next_id, String

      # @!attribute status
      #   Participant payout status.
      #
      #   @return [Symbol, GrowsurfRuby::Models::CampaignListPayoutsParams::Status, nil]
      optional :status, enum: -> { GrowsurfRuby::CampaignListPayoutsParams::Status }

      # @!method initialize(id:, limit: nil, next_id: nil, status: nil, request_options: {})
      #   @param id [String]
      #
      #   @param limit [Integer] Number of results to return. Maximum 100.
      #
      #   @param next_id [String] ID to start the next paged result set with.
      #
      #   @param status [Symbol, GrowsurfRuby::Models::CampaignListPayoutsParams::Status] Participant payout status.
      #
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

      # Participant payout status.
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        UPCOMING = :UPCOMING
        QUEUED = :QUEUED
        ISSUED = :ISSUED
        FAILED = :FAILED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
