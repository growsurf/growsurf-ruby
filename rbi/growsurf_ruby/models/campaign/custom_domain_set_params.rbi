# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class CustomDomainSetParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::CustomDomainSetParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # The hostname to serve the program's landing pages from, with or without
        # `https://`. Up to 255 characters.
        sig { returns(String) }
        attr_accessor :domain

        sig do
          params(
            domain: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The hostname to serve the program's landing pages from, with or without
          # `https://`. Up to 255 characters.
          domain:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { domain: String, request_options: GrowsurfRuby::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
