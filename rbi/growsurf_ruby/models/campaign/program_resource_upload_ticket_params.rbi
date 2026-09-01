# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ProgramResourceUploadTicketParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              ProgramResourceUploadTicketParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :file_name

        sig { returns(String) }
        attr_accessor :mime_type

        sig { returns(Integer) }
        attr_accessor :bytes

        sig do
          params(
            file_name: String,
            mime_type: String,
            bytes: Integer,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(file_name:, mime_type:, bytes:, request_options: {})
        end

        sig do
          override.returns(
            {
              file_name: String,
              mime_type: String,
              bytes: Integer,
              request_options: GrowsurfRuby::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
