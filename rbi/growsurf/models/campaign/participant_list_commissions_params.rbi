# typed: strong

module Growsurf
  module Models
    module Campaign
      class ParticipantListCommissionsParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Growsurf::Campaign::ParticipantListCommissionsParams,
              Growsurf::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :participant_id_or_email

        # Number of results to return. Maximum 100.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # ID to start the next paged result set with.
        sig { returns(T.nilable(String)) }
        attr_reader :next_id

        sig { params(next_id: String).void }
        attr_writer :next_id

        # Participant commission status.
        sig do
          returns(
            T.nilable(
              Growsurf::Campaign::ParticipantListCommissionsParams::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Growsurf::Campaign::ParticipantListCommissionsParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            id: String,
            participant_id_or_email: String,
            limit: Integer,
            next_id: String,
            status:
              Growsurf::Campaign::ParticipantListCommissionsParams::Status::OrSymbol,
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          participant_id_or_email:,
          # Number of results to return. Maximum 100.
          limit: nil,
          # ID to start the next paged result set with.
          next_id: nil,
          # Participant commission status.
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              participant_id_or_email: String,
              limit: Integer,
              next_id: String,
              status:
                Growsurf::Campaign::ParticipantListCommissionsParams::Status::OrSymbol,
              request_options: Growsurf::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Participant commission status.
        module Status
          extend Growsurf::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Growsurf::Campaign::ParticipantListCommissionsParams::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Growsurf::Campaign::ParticipantListCommissionsParams::Status::TaggedSymbol
            )
          APPROVED =
            T.let(
              :APPROVED,
              Growsurf::Campaign::ParticipantListCommissionsParams::Status::TaggedSymbol
            )
          PAID =
            T.let(
              :PAID,
              Growsurf::Campaign::ParticipantListCommissionsParams::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :REVERSED,
              Growsurf::Campaign::ParticipantListCommissionsParams::Status::TaggedSymbol
            )
          DELETED =
            T.let(
              :DELETED,
              Growsurf::Campaign::ParticipantListCommissionsParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Growsurf::Campaign::ParticipantListCommissionsParams::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
