# typed: strong

module GrowsurfRuby
  module Models
    class CampaignUpdateParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CampaignUpdateParams,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_reader :company_logo_image_url

      sig { params(company_logo_image_url: String).void }
      attr_writer :company_logo_image_url

      sig { returns(T.nilable(String)) }
      attr_reader :company_name

      sig { params(company_name: String).void }
      attr_writer :company_name

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        returns(T.nilable(GrowsurfRuby::CampaignUpdateParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(
          status: GrowsurfRuby::CampaignUpdateParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          id: String,
          company_logo_image_url: String,
          company_name: String,
          name: String,
          status: GrowsurfRuby::CampaignUpdateParams::Status::OrSymbol,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        company_logo_image_url: nil,
        company_name: nil,
        name: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            company_logo_image_url: String,
            company_name: String,
            name: String,
            status: GrowsurfRuby::CampaignUpdateParams::Status::OrSymbol,
            request_options: GrowsurfRuby::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, GrowsurfRuby::CampaignUpdateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT =
          T.let(
            :DRAFT,
            GrowsurfRuby::CampaignUpdateParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :PENDING,
            GrowsurfRuby::CampaignUpdateParams::Status::TaggedSymbol
          )
        IN_PROGRESS =
          T.let(
            :IN_PROGRESS,
            GrowsurfRuby::CampaignUpdateParams::Status::TaggedSymbol
          )
        COMPLETE =
          T.let(
            :COMPLETE,
            GrowsurfRuby::CampaignUpdateParams::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :CANCELLED,
            GrowsurfRuby::CampaignUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[GrowsurfRuby::CampaignUpdateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
