# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      # @see Growsurf::Resources::Campaign::Participant#list_commissions
      class ParticipantListCommissionsParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute participant_id_or_email
        #
        #   @return [String]
        required :participant_id_or_email, String

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
        #   Participant commission status.
        #
        #   @return [Symbol, Growsurf::Models::Campaign::ParticipantListCommissionsParams::Status, nil]
        optional :status, enum: -> { Growsurf::Campaign::ParticipantListCommissionsParams::Status }

        # @!method initialize(id:, participant_id_or_email:, limit: nil, next_id: nil, status: nil, request_options: {})
        #   @param id [String]
        #
        #   @param participant_id_or_email [String]
        #
        #   @param limit [Integer] Number of results to return. Maximum 100.
        #
        #   @param next_id [String] ID to start the next paged result set with.
        #
        #   @param status [Symbol, Growsurf::Models::Campaign::ParticipantListCommissionsParams::Status] Participant commission status.
        #
        #   @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}]

        # Participant commission status.
        module Status
          extend Growsurf::Internal::Type::Enum

          PENDING = :PENDING
          APPROVED = :APPROVED
          PAID = :PAID
          REVERSED = :REVERSED
          DELETED = :DELETED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
