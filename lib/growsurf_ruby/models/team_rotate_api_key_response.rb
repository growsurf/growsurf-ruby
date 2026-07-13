# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Team#rotate_api_key
    class TeamRotateAPIKeyResponse < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute api_key
      #   The new API key. Store it now; the key used for rotation stops working immediately.
      #
      #   @return [String]
      required :api_key, String, api_name: :apiKey

      # @!method initialize(api_key:)
      #   @param api_key [String] The new API key.
    end
  end
end
