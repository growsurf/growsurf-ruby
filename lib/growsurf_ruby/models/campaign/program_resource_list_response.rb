# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      class ProgramResourceListResponse < GrowsurfRuby::Internal::Type::BaseModel
        required :resources,
                 -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::ProgramResource] }
      end
    end
  end
end
