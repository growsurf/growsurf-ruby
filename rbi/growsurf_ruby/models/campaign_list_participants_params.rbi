# typed: strong

module GrowsurfRuby
  module Models
    class CampaignListParticipantsParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CampaignListParticipantsParams,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Number of results to return. Maximum 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Return only participants whose metadata matches every given key and value
      # exactly. Send each pair as `metadata[key]=value`. Up to 3 keys per request.
      # Values compare as strings, which is how metadata is stored.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # ID to start the next paged result set with.
      sig { returns(T.nilable(String)) }
      attr_reader :next_id

      sig { params(next_id: String).void }
      attr_writer :next_id

      sig do
        params(
          id: String,
          limit: Integer,
          metadata: T::Hash[Symbol, String],
          next_id: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Number of results to return. Maximum 100.
        limit: nil,
        # Return only participants whose metadata matches every given key and value
        # exactly. Send each pair as `metadata[key]=value`. Up to 3 keys per request.
        # Values compare as strings, which is how metadata is stored.
        metadata: nil,
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
            metadata: T::Hash[Symbol, String],
            next_id: String,
            request_options: GrowsurfRuby::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
