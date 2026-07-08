# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantBulkDeleteResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # One entry per submitted identifier, in the same order as the request.
        sig do
          returns(
            T::Array[
              GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result
            ]
          )
        end
        attr_accessor :results

        sig do
          returns(GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Summary)
        end
        attr_reader :summary

        sig do
          params(
            summary:
              GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Summary::OrHash
          ).void
        end
        attr_writer :summary

        sig do
          params(
            results:
              T::Array[
                GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result::OrHash
              ],
            summary:
              GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Summary::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # One entry per submitted identifier, in the same order as the request.
          results:,
          summary:
        )
        end

        sig do
          override.returns(
            {
              results:
                T::Array[
                  GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result
                ],
              summary:
                GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Summary
            }
          )
        end
        def to_hash
        end

        class Result < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result,
                GrowsurfRuby::Internal::AnyHash
              )
            end

          # The submitted participant ID or email address, echoed back as received.
          sig { returns(String) }
          attr_accessor :identifier

          # Zero-based position of this entry in the submitted `participants` array.
          sig { returns(Integer) }
          attr_accessor :index

          # Per-row outcome. `DELETED` — the participant was resolved and removed.
          # `NOT_FOUND` — no participant matches the ID or email. `DUPLICATE` — the entry
          # resolves to the same participant as an earlier entry in the same request.
          # `ERROR` — the lookup or deletion failed for this row.
          sig do
            returns(
              GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The resolved participant's email address. Present on `DELETED` rows.
          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { params(email: String).void }
          attr_writer :email

          # Human-readable detail for `NOT_FOUND`, `DUPLICATE`, and `ERROR` rows.
          sig { returns(T.nilable(String)) }
          attr_reader :message

          sig { params(message: String).void }
          attr_writer :message

          # The resolved GrowSurf participant ID. Present when the entry resolved to a
          # participant.
          sig { returns(T.nilable(String)) }
          attr_reader :participant_id

          sig { params(participant_id: String).void }
          attr_writer :participant_id

          sig do
            params(
              identifier: String,
              index: Integer,
              status:
                GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result::Status::OrSymbol,
              email: String,
              message: String,
              participant_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The submitted participant ID or email address, echoed back as received.
            identifier:,
            # Zero-based position of this entry in the submitted `participants` array.
            index:,
            # Per-row outcome. `DELETED` — the participant was resolved and removed.
            # `NOT_FOUND` — no participant matches the ID or email. `DUPLICATE` — the entry
            # resolves to the same participant as an earlier entry in the same request.
            # `ERROR` — the lookup or deletion failed for this row.
            status:,
            # The resolved participant's email address. Present on `DELETED` rows.
            email: nil,
            # Human-readable detail for `NOT_FOUND`, `DUPLICATE`, and `ERROR` rows.
            message: nil,
            # The resolved GrowSurf participant ID. Present when the entry resolved to a
            # participant.
            participant_id: nil
          )
          end

          sig do
            override.returns(
              {
                identifier: String,
                index: Integer,
                status:
                  GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result::Status::TaggedSymbol,
                email: String,
                message: String,
                participant_id: String
              }
            )
          end
          def to_hash
          end

          # Per-row outcome. `DELETED` — the participant was resolved and removed.
          # `NOT_FOUND` — no participant matches the ID or email. `DUPLICATE` — the entry
          # resolves to the same participant as an earlier entry in the same request.
          # `ERROR` — the lookup or deletion failed for this row.
          module Status
            extend GrowsurfRuby::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DELETED =
              T.let(
                :DELETED,
                GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result::Status::TaggedSymbol
              )
            NOT_FOUND =
              T.let(
                :NOT_FOUND,
                GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result::Status::TaggedSymbol
              )
            DUPLICATE =
              T.let(
                :DUPLICATE,
                GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result::Status::TaggedSymbol
              )
            ERROR =
              T.let(
                :ERROR,
                GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Result::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Summary < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                GrowsurfRuby::Campaign::ParticipantBulkDeleteResponse::Summary,
                GrowsurfRuby::Internal::AnyHash
              )
            end

          # Entries that resolved to a participant and were deleted.
          sig { returns(Integer) }
          attr_accessor :deleted_count

          # Entries that resolved to the same participant as an earlier entry.
          sig { returns(Integer) }
          attr_accessor :duplicate_count

          # Entries that failed to look up or delete.
          sig { returns(Integer) }
          attr_accessor :error_count

          # Entries that did not match any participant.
          sig { returns(Integer) }
          attr_accessor :not_found_count

          # Number of entries submitted in this request.
          sig { returns(Integer) }
          attr_accessor :total

          sig do
            params(
              deleted_count: Integer,
              duplicate_count: Integer,
              error_count: Integer,
              not_found_count: Integer,
              total: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Entries that resolved to a participant and were deleted.
            deleted_count:,
            # Entries that resolved to the same participant as an earlier entry.
            duplicate_count:,
            # Entries that failed to look up or delete.
            error_count:,
            # Entries that did not match any participant.
            not_found_count:,
            # Number of entries submitted in this request.
            total:
          )
          end

          sig do
            override.returns(
              {
                deleted_count: Integer,
                duplicate_count: Integer,
                error_count: Integer,
                not_found_count: Integer,
                total: Integer
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
