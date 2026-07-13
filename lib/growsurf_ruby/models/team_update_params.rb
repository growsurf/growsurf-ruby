# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Team#update
    class TeamUpdateParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      # @!attribute name
      #   The team's display name.
      #
      #   @return [String]
      required :name, String

      # @!method initialize(name:, request_options: {})
      #   @param name [String] The team's display name.
      #
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
