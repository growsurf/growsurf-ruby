# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      class RewardGroupCreateParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # The group name (internal only, never shown to participants). 1 to 100
        # characters.
        required :name, String
        # The rules that place participants in this group. Each email and domain can be
        # in one group only. Up to 500.
        optional :rules, -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::RewardGroupRule] }
      end
    end
  end
end
