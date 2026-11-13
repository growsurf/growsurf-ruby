# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantBulkMoveResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(ParticipantBulkMoveResponse, GrowsurfRuby::Internal::AnyHash)
          end

        sig { returns(T::Array[Result]) }
        attr_accessor :results

        sig { returns(Summary) }
        attr_reader :summary

        sig { params(summary: Summary::OrHash).void }
        attr_writer :summary

        sig do
          params(
            results: T::Array[Result::OrHash],
            summary: Summary::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, summary:)
        end

        sig { override.returns({ results: T::Array[Result], summary: Summary }) }
        def to_hash
        end

        class Result < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(Result, GrowsurfRuby::Internal::AnyHash) }

          sig { returns(String) }
          attr_accessor :identifier

          sig { returns(Integer) }
          attr_accessor :index

          sig { returns(Status::TaggedSymbol) }
          attr_accessor :status

          sig { returns(T.nilable(String)) }
          attr_accessor :email

          sig { returns(T.nilable(String)) }
          attr_reader :message

          sig { params(message: String).void }
          attr_writer :message

          sig { returns(T.nilable(String)) }
          attr_reader :participant_id

          sig { params(participant_id: String).void }
          attr_writer :participant_id

          sig do
            params(
              identifier: String,
              index: Integer,
              status: Status::OrSymbol,
              email: T.nilable(String),
              message: String,
              participant_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            identifier:,
            index:,
            status:,
            email: nil,
            message: nil,
            participant_id: nil
          )
          end

          sig do
            override.returns(
              {
                identifier: String,
                index: Integer,
                status: Status::TaggedSymbol,
                email: T.nilable(String),
                message: String,
                participant_id: String
              }
            )
          end
          def to_hash
          end

          module Status
            extend GrowsurfRuby::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Status) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }
            MOVED = T.let(:MOVED, TaggedSymbol)
            NOT_FOUND = T.let(:NOT_FOUND, TaggedSymbol)
            DUPLICATE = T.let(:DUPLICATE, TaggedSymbol)
            ERROR = T.let(:ERROR, TaggedSymbol)
            sig { override.returns(T::Array[TaggedSymbol]) }
            def self.values
            end
          end
        end

        class Summary < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(Summary, GrowsurfRuby::Internal::AnyHash) }

          sig { returns(Integer) }
          attr_accessor :duplicate_count

          sig { returns(Integer) }
          attr_accessor :error_count

          sig { returns(T.nilable(String)) }
          attr_accessor :group_id

          sig { returns(Integer) }
          attr_accessor :moved_count

          sig { returns(Integer) }
          attr_accessor :not_found_count

          sig { returns(Integer) }
          attr_accessor :total

          sig do
            params(
              duplicate_count: Integer,
              error_count: Integer,
              group_id: T.nilable(String),
              moved_count: Integer,
              not_found_count: Integer,
              total: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            duplicate_count:,
            error_count:,
            group_id:,
            moved_count:,
            not_found_count:,
            total:
          )
          end

          sig do
            override.returns(
              {
                duplicate_count: Integer,
                error_count: Integer,
                group_id: T.nilable(String),
                moved_count: Integer,
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
