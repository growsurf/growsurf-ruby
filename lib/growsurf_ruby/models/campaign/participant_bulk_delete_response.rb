# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#bulk_delete
      class ParticipantBulkDeleteResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute results
        #   One entry per submitted identifier, in the same order as the request.
        #
        #   @return [Array<GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteResponse::Result>]
        required :results,
                 -> {
                   GrowsurfRuby::Internal::Type::ArrayOf[
                     GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result
                   ]
                 }

        # @!attribute summary
        #
        #   @return [GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteResponse::Summary]
        required :summary, -> { GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Summary }

        # @!method initialize(results:, summary:)
        #   @param results [Array<GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteResponse::Result>] One entry per submitted identifier, in the same order as the request.
        #
        #   @param summary [GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteResponse::Summary]

        class Result < GrowsurfRuby::Internal::Type::BaseModel
          # @!attribute identifier
          #   The submitted participant ID or email address, echoed back as received.
          #
          #   @return [String]
          required :identifier, String

          # @!attribute index
          #   Zero-based position of this entry in the submitted `participants` array.
          #
          #   @return [Integer]
          required :index, Integer

          # @!attribute status
          #   Per-row outcome. `DELETED` — the participant was resolved and removed.
          #   `NOT_FOUND` — no participant matches the ID or email. `DUPLICATE` — the entry
          #   resolves to the same participant as an earlier entry in the same request.
          #   `ERROR` — the lookup or deletion failed for this row.
          #
          #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteResponse::Result::Status]
          required :status, enum: -> { GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result::Status }

          # @!attribute email
          #   The resolved participant's email address. Present on `DELETED` rows.
          #
          #   @return [String, nil]
          optional :email, String

          # @!attribute message
          #   Human-readable detail for `NOT_FOUND`, `DUPLICATE`, and `ERROR` rows.
          #
          #   @return [String, nil]
          optional :message, String

          # @!attribute participant_id
          #   The resolved GrowSurf participant ID. Present when the entry resolved to a
          #   participant.
          #
          #   @return [String, nil]
          optional :participant_id, String, api_name: :participantId

          # @!method initialize(identifier:, index:, status:, email: nil, message: nil, participant_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteResponse::Result} for
          #   more details.
          #
          #   @param identifier [String] The submitted participant ID or email address, echoed back as received.
          #
          #   @param index [Integer] Zero-based position of this entry in the submitted `participants` array.
          #
          #   @param status [Symbol, GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteResponse::Result::Status] Per-row outcome. `DELETED` — the participant was resolved and removed. `NOT_FOU
          #
          #   @param email [String] The resolved participant's email address. Present on `DELETED` rows.
          #
          #   @param message [String] Human-readable detail for `NOT_FOUND`, `DUPLICATE`, and `ERROR` rows.
          #
          #   @param participant_id [String] The resolved GrowSurf participant ID. Present when the entry resolved to a part

          # Per-row outcome. `DELETED` — the participant was resolved and removed.
          # `NOT_FOUND` — no participant matches the ID or email. `DUPLICATE` — the entry
          # resolves to the same participant as an earlier entry in the same request.
          # `ERROR` — the lookup or deletion failed for this row.
          #
          # @see GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteResponse::Result#status
          module Status
            extend GrowsurfRuby::Internal::Type::Enum

            DELETED = :DELETED
            NOT_FOUND = :NOT_FOUND
            DUPLICATE = :DUPLICATE
            ERROR = :ERROR

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Summary < GrowsurfRuby::Internal::Type::BaseModel
          # @!attribute deleted_count
          #   Entries that resolved to a participant and were deleted.
          #
          #   @return [Integer]
          required :deleted_count, Integer, api_name: :deletedCount

          # @!attribute duplicate_count
          #   Entries that resolved to the same participant as an earlier entry.
          #
          #   @return [Integer]
          required :duplicate_count, Integer, api_name: :duplicateCount

          # @!attribute error_count
          #   Entries that failed to look up or delete.
          #
          #   @return [Integer]
          required :error_count, Integer, api_name: :errorCount

          # @!attribute not_found_count
          #   Entries that did not match any participant.
          #
          #   @return [Integer]
          required :not_found_count, Integer, api_name: :notFoundCount

          # @!attribute total
          #   Number of entries submitted in this request.
          #
          #   @return [Integer]
          required :total, Integer

          # @!method initialize(deleted_count:, duplicate_count:, error_count:, not_found_count:, total:)
          #   @param deleted_count [Integer] Entries that resolved to a participant and were deleted.
          #
          #   @param duplicate_count [Integer] Entries that resolved to the same participant as an earlier entry.
          #
          #   @param error_count [Integer] Entries that failed to look up or delete.
          #
          #   @param not_found_count [Integer] Entries that did not match any participant.
          #
          #   @param total [Integer] Number of entries submitted in this request.
        end
      end
    end
  end
end
