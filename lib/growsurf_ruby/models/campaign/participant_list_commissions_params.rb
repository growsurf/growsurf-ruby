# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#list_commissions
      class ParticipantListCommissionsParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

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
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantListCommissionsParams::Status, nil]
        optional :status, enum: -> { GrowsurfRuby::Campaign::ParticipantListCommissionsParams::Status }

        # @!method initialize(id:, participant_id_or_email:, limit: nil, next_id: nil, status: nil, request_options: {})
        #   @param id [String]
        #
        #   @param participant_id_or_email [String]
        #
        #   @param limit [Integer] Number of results to return. Maximum 100.
        #
        #   @param next_id [String] ID to start the next paged result set with.
        #
        #   @param status [Symbol, GrowsurfRuby::Models::Campaign::ParticipantListCommissionsParams::Status] Participant commission status.
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

        # Participant commission status.
        module Status
          extend GrowsurfRuby::Internal::Type::Enum

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
