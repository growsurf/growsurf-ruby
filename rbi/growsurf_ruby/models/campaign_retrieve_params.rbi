# typed: strong

module GrowsurfRuby
  module Models
    class CampaignRetrieveParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CampaignRetrieveParams,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig do
        params(
          id: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(id:, request_options: {})
      end

      sig do
        override.returns(
          { id: String, request_options: GrowsurfRuby::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
