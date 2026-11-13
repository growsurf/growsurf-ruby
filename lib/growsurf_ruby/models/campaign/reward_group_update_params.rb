# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      class RewardGroupUpdateParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        required :id, String
        # The group name (internal only, never shown to participants). 1 to 100
        # characters.
        optional :name, String
        # The group's position in the program's group list.
        optional :order, Integer
        # Replaces the group's whole rule list. Up to 500.
        optional :rules, -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::RewardGroupRule] }
      end
    end
  end
end
