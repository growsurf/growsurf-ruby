# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      class DeleteProgramResourceResponse < GrowsurfRuby::Internal::Type::BaseModel
        required :id, String
        required :success, GrowsurfRuby::Internal::Type::Boolean
      end
    end
  end
end
