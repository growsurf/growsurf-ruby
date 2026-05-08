# typed: strong

module Growsurf
  module Models
    module Campaign
      class ParticipantListPayoutsParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Growsurf::Campaign::ParticipantListPayoutsParams,
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

        # Participant payout status.
        sig do
          returns(
            T.nilable(
              Growsurf::Campaign::ParticipantListPayoutsParams::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Growsurf::Campaign::ParticipantListPayoutsParams::Status::OrSymbol
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
              Growsurf::Campaign::ParticipantListPayoutsParams::Status::OrSymbol,
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
          # Participant payout status.
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
                Growsurf::Campaign::ParticipantListPayoutsParams::Status::OrSymbol,
              request_options: Growsurf::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Participant payout status.
        module Status
          extend Growsurf::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Growsurf::Campaign::ParticipantListPayoutsParams::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UPCOMING =
            T.let(
              :UPCOMING,
              Growsurf::Campaign::ParticipantListPayoutsParams::Status::TaggedSymbol
            )
          QUEUED =
            T.let(
              :QUEUED,
              Growsurf::Campaign::ParticipantListPayoutsParams::Status::TaggedSymbol
            )
          ISSUED =
            T.let(
              :ISSUED,
              Growsurf::Campaign::ParticipantListPayoutsParams::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              Growsurf::Campaign::ParticipantListPayoutsParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Growsurf::Campaign::ParticipantListPayoutsParams::Status::TaggedSymbol
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
