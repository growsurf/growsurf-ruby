# typed: strong

module GrowsurfRuby
  module Models
    class CampaignListParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CampaignListParams,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig do
        params(request_options: GrowsurfRuby::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig do
        override.returns({ request_options: GrowsurfRuby::RequestOptions })
      end
      def to_hash
      end
    end
  end
end
