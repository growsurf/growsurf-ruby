# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      class ProgramResourceDeleteParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        required :id, String
      end
    end
  end
end
