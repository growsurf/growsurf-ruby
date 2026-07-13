# typed: strong

module GrowsurfRuby
  module Models
    class TeamUpdateParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(GrowsurfRuby::TeamUpdateParams, GrowsurfRuby::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          name: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(name:, request_options: {})
      end

      sig do
        override.returns(
          { name: String, request_options: GrowsurfRuby::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
