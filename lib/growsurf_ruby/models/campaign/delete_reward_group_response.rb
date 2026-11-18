# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      class DeleteRewardGroupResponse < GrowsurfRuby::Internal::Type::BaseModel
        # The deleted group ID.
        required :id, String
        # The number of members moved to Default.
        required :moved_to_default, Integer, api_name: :movedToDefault
        # Whether the group was deleted.
        required :success, GrowsurfRuby::Internal::Type::Boolean
      end
    end
  end
end
