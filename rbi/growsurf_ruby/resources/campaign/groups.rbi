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

        # Creates a group with a copy of each active Default reward, except Leaderboard
        # rewards, which stay program-wide. The copies have new IDs and this group's
        # `groupId`; change them with Update a campaign reward. `rules` place participants
        # in the group: `EMAIL` matches an exact email, `DOMAIN` matches a company
        # domain (public email domains such as gmail.com are refused), and `PARTICIPANT`
        # moves an existing participant in now. Each email and domain can be in one group
        # only. Email and domain rules place new signups and affiliate approvals only; they
        # do not move existing participants. When more than one way matches, a move (a
        # `PARTICIPANT` rule, Update participant, or bulk move) wins, then the group's
        # signup link, then `EMAIL`, then `DOMAIN`, then Default.
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
        # Rewards.
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
