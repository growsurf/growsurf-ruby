# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantListPayoutsParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::ParticipantListPayoutsParams,
              GrowsurfRuby::Internal::AnyHash
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
              GrowsurfRuby::Campaign::ParticipantListPayoutsParams::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              GrowsurfRuby::Campaign::ParticipantListPayoutsParams::Status::OrSymbol
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
              GrowsurfRuby::Campaign::ParticipantListPayoutsParams::Status::OrSymbol,
            request_options: GrowsurfRuby::RequestOptions::OrHash
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
                GrowsurfRuby::Campaign::ParticipantListPayoutsParams::Status::OrSymbol,
              request_options: GrowsurfRuby::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Participant payout status.
        module Status
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                GrowsurfRuby::Campaign::ParticipantListPayoutsParams::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UPCOMING =
            T.let(
              :UPCOMING,
              GrowsurfRuby::Campaign::ParticipantListPayoutsParams::Status::TaggedSymbol
            )
          QUEUED =
            T.let(
              :QUEUED,
              GrowsurfRuby::Campaign::ParticipantListPayoutsParams::Status::TaggedSymbol
            )
          ISSUED =
            T.let(
              :ISSUED,
              GrowsurfRuby::Campaign::ParticipantListPayoutsParams::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              GrowsurfRuby::Campaign::ParticipantListPayoutsParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Campaign::ParticipantListPayoutsParams::Status::TaggedSymbol
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
