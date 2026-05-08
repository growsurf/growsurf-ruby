# frozen_string_literal: true

module Growsurf
  module Models
    # @see Growsurf::Resources::Campaign#list_payouts
    class CampaignListPayoutsParams < Growsurf::Internal::Type::BaseModel
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

      # @!attribute status
      #   Participant payout status.
      #
      #   @return [Symbol, Growsurf::Models::CampaignListPayoutsParams::Status, nil]
      optional :status, enum: -> { Growsurf::CampaignListPayoutsParams::Status }

      # @!method initialize(id:, limit: nil, next_id: nil, status: nil, request_options: {})
      #   @param id [String]
      #
      #   @param limit [Integer] Number of results to return. Maximum 100.
      #
      #   @param next_id [String] ID to start the next paged result set with.
      #
      #   @param status [Symbol, Growsurf::Models::CampaignListPayoutsParams::Status] Participant payout status.
      #
      #   @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}]

      # Participant payout status.
      module Status
        extend Growsurf::Internal::Type::Enum

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
