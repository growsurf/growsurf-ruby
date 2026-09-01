# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # The unmodified signed result returned after uploading with a GrowSurf ticket.
      class ProgramResourceUploadResult < GrowsurfRuby::Internal::Type::BaseModel
        optional :asset_id, String
        required :public_id, String
        required :version, Integer
        required :signature, String
        required :resource_type, enum: -> { GrowsurfRuby::Models::Campaign::ProgramResourceUploadResult::ResourceType }
        required :type, enum: -> { GrowsurfRuby::Models::Campaign::ProgramResourceUploadResult::Type }
        required :bytes, Integer
        required :secure_url, String
        optional :format, String

        module ResourceType
          extend GrowsurfRuby::Internal::Type::Enum

          IMAGE = :image
          RAW = :raw
        end

        module Type
          extend GrowsurfRuby::Internal::Type::Enum

          AUTHENTICATED = :authenticated
        end
      end
    end
  end
end
