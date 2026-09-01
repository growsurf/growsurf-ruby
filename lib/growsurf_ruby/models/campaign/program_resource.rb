# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      class ProgramResourceFile < GrowsurfRuby::Internal::Type::BaseModel
        required :file_name, String, api_name: :fileName
        required :mime_type, String, api_name: :mimeType
        required :bytes, Integer
        required :format, String
        required :moderation_status,
                 enum: -> { GrowsurfRuby::Campaign::ProgramResourceFile::ModerationStatus },
                 api_name: :moderationStatus

        module ModerationStatus
          extend GrowsurfRuby::Internal::Type::Enum

          PENDING = :PENDING
          APPROVED = :APPROVED
          REJECTED = :REJECTED
        end
      end

      # A program-owned participant resource returned by the REST API.
      class ProgramResource < GrowsurfRuby::Internal::Type::BaseModel
        required :id, String
        required :type, enum: -> { GrowsurfRuby::Campaign::ProgramResource::Type }
        required :title, String
        required :description, String, nil?: true
        required :category, String, nil?: true
        required :url, String, nil?: true
        required :text, String, nil?: true
        required :file, -> { GrowsurfRuby::Campaign::ProgramResourceFile }, nil?: true
        required :is_published, GrowsurfRuby::Internal::Type::Boolean, api_name: :isPublished
        required :position, Integer
        # Unix time in milliseconds when the resource was created.
        required :created_at, Integer, api_name: :createdAt
        # Unix time in milliseconds when the resource was last updated.
        required :updated_at, Integer, api_name: :updatedAt

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
