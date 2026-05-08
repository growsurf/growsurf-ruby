# typed: strong

module Growsurf
  module Models
    class CampaignListPayoutsParams < Growsurf::Internal::Type::BaseModel
      extend Growsurf::Internal::Type::RequestParameters::Converter
      include Growsurf::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Growsurf::CampaignListPayoutsParams,
            Growsurf::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

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
          T.nilable(Growsurf::CampaignListPayoutsParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: Growsurf::CampaignListPayoutsParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          id: String,
          limit: Integer,
          next_id: String,
          status: Growsurf::CampaignListPayoutsParams::Status::OrSymbol,
          request_options: Growsurf::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
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
            limit: Integer,
            next_id: String,
            status: Growsurf::CampaignListPayoutsParams::Status::OrSymbol,
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
            T.all(Symbol, Growsurf::CampaignListPayoutsParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UPCOMING =
          T.let(
            :UPCOMING,
            Growsurf::CampaignListPayoutsParams::Status::TaggedSymbol
          )
        QUEUED =
          T.let(
            :QUEUED,
            Growsurf::CampaignListPayoutsParams::Status::TaggedSymbol
          )
        ISSUED =
          T.let(
            :ISSUED,
            Growsurf::CampaignListPayoutsParams::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :FAILED,
            Growsurf::CampaignListPayoutsParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Growsurf::CampaignListPayoutsParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
