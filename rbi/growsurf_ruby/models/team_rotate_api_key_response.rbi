# typed: strong

module GrowsurfRuby
  module Models
    class TeamRotateAPIKeyResponse < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::TeamRotateAPIKeyResponse,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :api_key

      sig { params(api_key: String).returns(T.attached_class) }
      def self.new(api_key:)
      end

      sig { override.returns({ api_key: String }) }
      def to_hash
      end
    end
  end
end
