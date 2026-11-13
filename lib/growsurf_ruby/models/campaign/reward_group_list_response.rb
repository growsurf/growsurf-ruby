# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      class RewardGroupListResponse < GrowsurfRuby::Internal::Type::BaseModel
        # The program's groups in display order. Default is not listed.
        required :groups,
                 -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::RewardGroup] }
      end
    end
  end
end
