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
        # Omit or send an empty array. Add rules after configuring a reward.
        optional :rules, -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::RewardGroupRule] }
      end
    end
  end
end
