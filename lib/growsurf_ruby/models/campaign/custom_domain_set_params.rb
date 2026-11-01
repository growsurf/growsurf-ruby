# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::CustomDomain#set
      class CustomDomainSetParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # @!attribute domain
        #   The hostname to serve the program's landing pages from, with or without
        #   `https://`. Up to 255 characters.
        #
        #   @return [String]
        required :domain, String

        # @!method initialize(domain:, request_options: {})
        #   @param domain [String] The hostname to serve the program's landing pages from, with or without `https://`. Up to 255 characters.
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
