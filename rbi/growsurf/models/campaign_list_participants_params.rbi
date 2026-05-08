# typed: strong

module Growsurf
  module Models
    class CampaignListParticipantsParams < Growsurf::Internal::Type::BaseModel
      extend Growsurf::Internal::Type::RequestParameters::Converter
      include Growsurf::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Growsurf::CampaignListParticipantsParams,
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

      sig do
        params(
          id: String,
          limit: Integer,
          next_id: String,
          request_options: Growsurf::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Number of results to return. Maximum 100.
        limit: nil,
        # ID to start the next paged result set with.
        next_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            limit: Integer,
            next_id: String,
            request_options: Growsurf::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
