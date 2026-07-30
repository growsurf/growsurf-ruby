# typed: strong

module GrowsurfRuby
  module Models
    class CampaignListAffiliateInvitesParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CampaignListAffiliateInvitesParams,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # How many invites to return per page (1-100).
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Offset number used to skip through a result set.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Only return invites with this status.
      sig do
        returns(
          T.nilable(
            GrowsurfRuby::CampaignListAffiliateInvitesParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            GrowsurfRuby::CampaignListAffiliateInvitesParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          id: String,
          limit: Integer,
          offset: Integer,
          status:
            GrowsurfRuby::CampaignListAffiliateInvitesParams::Status::OrSymbol,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # How many invites to return per page (1-100).
        limit: nil,
        # Offset number used to skip through a result set.
        offset: nil,
        # Only return invites with this status.
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
              GrowsurfRuby::CampaignListAffiliateInvitesParams::Status::OrSymbol,
            request_options: GrowsurfRuby::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Only return invites with this status.
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              GrowsurfRuby::CampaignListAffiliateInvitesParams::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :PENDING,
            GrowsurfRuby::CampaignListAffiliateInvitesParams::Status::TaggedSymbol
          )
        ACCEPTED =
          T.let(
            :ACCEPTED,
            GrowsurfRuby::CampaignListAffiliateInvitesParams::Status::TaggedSymbol
          )
        EXPIRED =
          T.let(
            :EXPIRED,
            GrowsurfRuby::CampaignListAffiliateInvitesParams::Status::TaggedSymbol
          )
        REVOKED =
          T.let(
            :REVOKED,
            GrowsurfRuby::CampaignListAffiliateInvitesParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              GrowsurfRuby::CampaignListAffiliateInvitesParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
