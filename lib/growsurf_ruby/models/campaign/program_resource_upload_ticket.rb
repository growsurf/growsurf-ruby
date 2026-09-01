# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      module ProgramResourceUploadParameter
        extend GrowsurfRuby::Internal::Type::Union

        variant GrowsurfRuby::Internal::Type::Boolean
        variant String
        variant Integer
        variant Float
      end

      class ProgramResourceUploadTicket < GrowsurfRuby::Internal::Type::BaseModel
        required :ticket, String
        required :expires_in, Integer, api_name: :expiresIn
        required :upload_url, String, api_name: :uploadUrl
        # Opaque signed scalar fields that must be sent unchanged with the file upload.
        required :upload_parameters,
                 GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Models::Campaign::ProgramResourceUploadParameter],
                 api_name: :uploadParameters
      end
    end
  end
end
