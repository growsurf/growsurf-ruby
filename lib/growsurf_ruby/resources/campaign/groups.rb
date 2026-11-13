# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      # Group operations. Groups give some participants a different reward list.
      class Groups
        # Lists the program's groups in display order. Groups give some participants a
        # different reward list. Each participant is in one group, and `groupId: null` is
        # Default, which holds the program's standard rewards and is
        # not in this list. A group's rewards replace Default's whole reward list for its
        # members' new referrals. Leaderboard rewards stay program-wide.
        #
        # @overload list(id, request_options: {})
        # @return [GrowsurfRuby::Models::Campaign::RewardGroupListResponse]
        def list(id, params = {})
          @client.request(
            method: :get,
            path: ["campaign/%1$s/groups", id],
            model: GrowsurfRuby::Campaign::RewardGroupListResponse,
            options: params[:request_options]
          )
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
        # signup link, then `EMAIL`, then `DOMAIN`, then Default. Group names must be unique
        # in the program, ignoring case. A name that another group uses returns `409`, and
        # "Default" returns `400`.
        #
        # @overload create(id, name:, rules: nil, request_options: {})
        # @return [GrowsurfRuby::Models::Campaign::RewardGroup]
        def create(id, params)
          parsed, options = GrowsurfRuby::Campaign::RewardGroupCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["campaign/%1$s/groups", id],
            body: parsed,
            model: GrowsurfRuby::Campaign::RewardGroup,
            options: options
          )
        end

        # Retrieves one of the program's groups.
        #
        # @overload retrieve(group_id, id:, request_options: {})
        # @return [GrowsurfRuby::Models::Campaign::RewardGroup]
        def retrieve(group_id, params)
          parsed, options = GrowsurfRuby::Campaign::RewardGroupRetrieveParams.dump_request(params)
          id = parsed.delete(:id) { raise ArgumentError.new("missing required path argument id") }
          @client.request(
            method: :get,
            path: ["campaign/%1$s/groups/%2$s", id, group_id],
            model: GrowsurfRuby::Campaign::RewardGroup,
            options: options
          )
        end

        # Renames, reorders, or changes the rules of a group. Sending `rules` replaces the
        # whole list. An added `PARTICIPANT` rule moves that participant in now; a removed
        # one moves them back to Default if they are still in this group. Email and domain
        # rule changes move no one. To change the group's rewards, update its Campaign
        # Rewards. Group names must be unique in the program, ignoring case. A name that
        # another group uses returns `409`, and "Default" returns `400`.
        #
        # @overload update(group_id, id:, name: nil, order: nil, rules: nil, request_options: {})
        # @return [GrowsurfRuby::Models::Campaign::RewardGroup]
        def update(group_id, params)
          parsed, options = GrowsurfRuby::Campaign::RewardGroupUpdateParams.dump_request(params)
          id = parsed.delete(:id) { raise ArgumentError.new("missing required path argument id") }
          @client.request(
            method: :patch,
            path: ["campaign/%1$s/groups/%2$s", id, group_id],
            body: parsed,
            model: GrowsurfRuby::Campaign::RewardGroup,
            options: options
          )
        end

        # Deletes a group. Its members move to Default, and its Campaign Rewards are
        # removed from the program, so they no longer appear in
        # `GET /campaign/{id}/reward-configs`. Rewards already earned keep their amounts
        # and can still be sent.
        #
        # @overload delete(group_id, id:, request_options: {})
        # @return [GrowsurfRuby::Models::Campaign::DeleteRewardGroupResponse]
        def delete(group_id, params)
          parsed, options = GrowsurfRuby::Campaign::RewardGroupDeleteParams.dump_request(params)
          id = parsed.delete(:id) { raise ArgumentError.new("missing required path argument id") }
          @client.request(
            method: :delete,
            path: ["campaign/%1$s/groups/%2$s", id, group_id],
            model: GrowsurfRuby::Campaign::DeleteRewardGroupResponse,
            options: options
          )
        end

        # @api private
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
