# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      class Groups
        # Lists the program's groups in display order. Groups give some participants a
        # different reward list. Each participant is in one group, and `groupId: null` is
        # Default, which holds the program's standard rewards and is
        # not in this list. A group's rewards replace Default's whole reward list for its
        # members' new referrals. Leaderboard rewards stay program-wide.
        sig do
          params(
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Campaign::RewardGroupListResponse)
        end
        def list(id, request_options: {})
        end

        # Creates an empty group. Add Campaign Rewards with its `groupId` before adding
        # participants or rules. Omit `rules` or send an empty array; nonempty rules return `400`.
        # Group names must be unique, ignoring case. Duplicate names return `409`; "Default" returns `400`.
        sig do
          params(
            id: String,
            name: String,
            rules: T::Array[GrowsurfRuby::Campaign::RewardGroupRule::OrHash],
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Campaign::RewardGroup)
        end
        def create(id, name:, rules: nil, request_options: {})
        end

        # Retrieves one of the program's groups.
        sig do
          params(
            group_id: String,
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Campaign::RewardGroup)
        end
        def retrieve(group_id, id:, request_options: {})
        end

        # Renames, reorders, or changes the rules of a group. Sending `rules` replaces the
        # whole list. An added `PARTICIPANT` rule moves that participant in now; a removed
        # one moves them back to Default if they are still in this group. Email and domain
        # rule changes move no one. To change the group's rewards, update its Campaign
        # Rewards. Group names must be unique in the program, ignoring case. A name that
        # another group uses returns `409`, and "Default" returns `400`.
        sig do
          params(
            group_id: String,
            id: String,
            name: String,
            order: Integer,
            rules: T::Array[GrowsurfRuby::Campaign::RewardGroupRule::OrHash],
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Campaign::RewardGroup)
        end
        def update(
          group_id,
          id:,
          name: nil,
          order: nil,
          rules: nil,
          request_options: {}
        )
        end

        # Deletes a group. Its members move to Default, and its Campaign Rewards are
        # removed from the program, so they no longer appear in
        # `GET /campaign/{id}/reward-configs`. Rewards already earned keep their amounts
        # and can still be sent.
        sig do
          params(
            group_id: String,
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Campaign::DeleteRewardGroupResponse)
        end
        def delete(group_id, id:, request_options: {})
        end

        # @api private
        sig { params(client: GrowsurfRuby::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
