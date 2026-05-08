# typed: strong

module GrowsurfRuby
  module Models
    class CampaignListCommissionsParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CampaignListCommissionsParams,
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

      # ID to start the next paged result set with.
      sig { returns(T.nilable(String)) }
      attr_reader :next_id

      sig { params(next_id: String).void }
      attr_writer :next_id

      # Participant commission status.
      sig do
        returns(
          T.nilable(
            GrowsurfRuby::CampaignListCommissionsParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: GrowsurfRuby::CampaignListCommissionsParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          id: String,
          limit: Integer,
          next_id: String,
          status: GrowsurfRuby::CampaignListCommissionsParams::Status::OrSymbol,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
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
            limit: Integer,
            next_id: String,
            status:
              GrowsurfRuby::CampaignListCommissionsParams::Status::OrSymbol,
            request_options: GrowsurfRuby::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Participant commission status.
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, GrowsurfRuby::CampaignListCommissionsParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :PENDING,
            GrowsurfRuby::CampaignListCommissionsParams::Status::TaggedSymbol
          )
        APPROVED =
          T.let(
            :APPROVED,
            GrowsurfRuby::CampaignListCommissionsParams::Status::TaggedSymbol
          )
        PAID =
          T.let(
            :PAID,
            GrowsurfRuby::CampaignListCommissionsParams::Status::TaggedSymbol
          )
        REVERSED =
          T.let(
            :REVERSED,
            GrowsurfRuby::CampaignListCommissionsParams::Status::TaggedSymbol
          )
        DELETED =
          T.let(
            :DELETED,
            GrowsurfRuby::CampaignListCommissionsParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              GrowsurfRuby::CampaignListCommissionsParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
