# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#list_activity_logs
      class ParticipantListActivityLogsParams < GrowsurfRuby::Internal::Type::BaseModel
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
        #   Number of logs to return (1–100, default 20).
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute offset
        #   Number of logs to skip.
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!method initialize(id:, participant_id_or_email:, limit: nil, offset: nil, request_options: {})
        #   @param id [String]
        #
        #   @param participant_id_or_email [String]
        #
        #   @param limit [Integer] Number of logs to return (1–100, default 20).
        #
        #   @param offset [Integer] Number of logs to skip.
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
