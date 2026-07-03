# typed: strong

module GrowsurfRuby
  module Models
    class CampaignCreateParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CampaignCreateParams,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(GrowsurfRuby::CampaignCreateParams::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :company_logo_image_url

      sig { params(company_logo_image_url: String).void }
      attr_writer :company_logo_image_url

      sig { returns(T.nilable(String)) }
      attr_reader :company_name

      sig { params(company_name: String).void }
      attr_writer :company_name

      sig { returns(T.nilable(String)) }
      attr_reader :currency_iso

      sig { params(currency_iso: String).void }
      attr_writer :currency_iso

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        returns(T.nilable(T::Array[GrowsurfRuby::Campaign::RewardCreateParams]))
      end
      attr_reader :rewards

      sig do
        params(
          rewards: T::Array[GrowsurfRuby::Campaign::RewardCreateParams::OrHash]
        ).void
      end
      attr_writer :rewards

      sig do
        params(
          type: GrowsurfRuby::CampaignCreateParams::Type::OrSymbol,
          company_logo_image_url: String,
          company_name: String,
          currency_iso: String,
          name: String,
          rewards: T::Array[GrowsurfRuby::Campaign::RewardCreateParams::OrHash],
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        type:,
        company_logo_image_url: nil,
        company_name: nil,
        currency_iso: nil,
        name: nil,
        rewards: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            type: GrowsurfRuby::CampaignCreateParams::Type::OrSymbol,
            company_logo_image_url: String,
            company_name: String,
            currency_iso: String,
            name: String,
            rewards:
              T::Array[GrowsurfRuby::Campaign::RewardCreateParams::OrHash],
            request_options: GrowsurfRuby::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Type
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, GrowsurfRuby::CampaignCreateParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REFERRAL =
          T.let(
            :REFERRAL,
            GrowsurfRuby::CampaignCreateParams::Type::TaggedSymbol
          )
        AFFILIATE =
          T.let(
            :AFFILIATE,
            GrowsurfRuby::CampaignCreateParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[GrowsurfRuby::CampaignCreateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
