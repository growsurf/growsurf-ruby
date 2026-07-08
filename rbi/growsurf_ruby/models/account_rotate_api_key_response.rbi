# typed: strong

module GrowsurfRuby
  module Models
    class AccountRotateAPIKeyResponse < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::AccountRotateAPIKeyResponse,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      # The new API key. The previous key is revoked immediately.
      sig { returns(String) }
      attr_accessor :api_key

      sig { params(api_key: String).returns(T.attached_class) }
      def self.new(
        # The new API key. The previous key is revoked immediately.
        api_key:
      )
      end

      sig { override.returns({ api_key: String }) }
      def to_hash
      end
    end
  end
end
