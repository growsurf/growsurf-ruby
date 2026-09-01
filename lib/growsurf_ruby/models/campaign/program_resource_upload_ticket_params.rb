# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      class ProgramResourceUploadTicketParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # File name sent to GrowSurf. Must contain 1 through 120 characters.
        required :file_name, String, api_name: :fileName
        required :mime_type, String, api_name: :mimeType
        required :bytes, Integer
      end
    end
  end
end
