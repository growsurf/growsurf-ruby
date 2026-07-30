# typed: strong

module GrowsurfRuby
  module Models
    class CampaignListAffiliateApplicationsParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CampaignListAffiliateApplicationsParams,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # How many applications to return per page (1-100).
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Offset number used to skip through a result set.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Only return applications with this status.
      sig do
        returns(
          T.nilable(
            GrowsurfRuby::CampaignListAffiliateApplicationsParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            GrowsurfRuby::CampaignListAffiliateApplicationsParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          id: String,
          limit: Integer,
          offset: Integer,
          status:
            GrowsurfRuby::CampaignListAffiliateApplicationsParams::Status::OrSymbol,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # How many applications to return per page (1-100).
        limit: nil,
        # Offset number used to skip through a result set.
        offset: nil,
        # Only return applications with this status.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            limit: Integer,
            offset: Integer,
            status:
              GrowsurfRuby::CampaignListAffiliateApplicationsParams::Status::OrSymbol,
            request_options: GrowsurfRuby::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Only return applications with this status.
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              GrowsurfRuby::CampaignListAffiliateApplicationsParams::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :PENDING,
            GrowsurfRuby::CampaignListAffiliateApplicationsParams::Status::TaggedSymbol
          )
        APPROVED =
          T.let(
            :APPROVED,
            GrowsurfRuby::CampaignListAffiliateApplicationsParams::Status::TaggedSymbol
          )
        DENIED =
          T.let(
            :DENIED,
            GrowsurfRuby::CampaignListAffiliateApplicationsParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              GrowsurfRuby::CampaignListAffiliateApplicationsParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
