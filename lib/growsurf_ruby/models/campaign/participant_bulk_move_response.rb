# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#bulk_move
      class ParticipantBulkMoveResponse < GrowsurfRuby::Internal::Type::BaseModel
        # One entry per submitted identifier, in the same order as the request.
        required :results, -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::ParticipantBulkMoveResponse::Result] }
        required :summary, -> { GrowsurfRuby::Campaign::ParticipantBulkMoveResponse::Summary }

        class Result < GrowsurfRuby::Internal::Type::BaseModel
          # The submitted participant ID or email address, echoed back as received.
          required :identifier, String
          # Zero-based position of this entry in the submitted `participants` array.
          required :index, Integer
          # Per-row outcome. `MOVED` — the participant was resolved and is now in the
          # target group. `NOT_FOUND` — no participant matches the ID or email.
          # `DUPLICATE` — the entry resolves to the same participant as an earlier entry
          # in the same request. `ERROR` — the lookup failed for this row.
          required :status, enum: -> { GrowsurfRuby::Campaign::ParticipantBulkMoveResponse::Result::Status }
          # The resolved participant's email address. Present on `MOVED` rows.
          optional :email, String, nil?: true
          # Human-readable detail for `NOT_FOUND`, `DUPLICATE`, and `ERROR` rows.
          optional :message, String
          # The resolved GrowSurf participant ID. Present when the entry resolved to a
          # participant.
          optional :participant_id, String, api_name: :participantId

          module Status
            extend GrowsurfRuby::Internal::Type::Enum

            MOVED = :MOVED
            NOT_FOUND = :NOT_FOUND
            DUPLICATE = :DUPLICATE
            ERROR = :ERROR
          end
        end

        class Summary < GrowsurfRuby::Internal::Type::BaseModel
          # Entries that resolved to the same participant as an earlier entry.
          required :duplicate_count, Integer, api_name: :duplicateCount
          # Entries that failed to look up.
          required :error_count, Integer, api_name: :errorCount
          # The target group, or `nil` for Default.
          required :group_id, String, api_name: :groupId, nil?: true
          # Entries that resolved to a participant and were moved.
          required :moved_count, Integer, api_name: :movedCount
          # Entries that did not match any participant.
          required :not_found_count, Integer, api_name: :notFoundCount
          # The number of submitted entries.
          required :total, Integer
        end
      end
    end
  end
end
