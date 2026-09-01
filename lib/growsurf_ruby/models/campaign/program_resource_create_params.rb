# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      class ProgramResourceCreateParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        required :type, enum: -> { GrowsurfRuby::Campaign::ProgramResourceCreateParams::Type }
        required :title, String
        optional :description, String, nil?: true
        optional :category, String, nil?: true
        optional :is_published, GrowsurfRuby::Internal::Type::Boolean, api_name: :isPublished
        optional :url, String
        optional :text, String
        optional :upload_ticket, String, api_name: :uploadTicket
        optional :upload_result,
                 GrowsurfRuby::Models::Campaign::ProgramResourceUploadResult,
                 api_name: :uploadResult

        module Type
          extend GrowsurfRuby::Internal::Type::Enum

          FILE = :FILE
          LINK = :LINK
          TEXT = :TEXT
        end
      end
    end
  end
end
