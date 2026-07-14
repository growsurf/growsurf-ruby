# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      # Participant reward retrieval and manual reward operations.
      class Reward
        # Removes a manually approved participant reward that has not already been
        # approved.
        #
        # @overload delete(reward_id, id:, request_options: {})
        #
        # @param reward_id [String] Participant reward ID.
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::RewardDeleteResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::RewardDeleteParams
        def delete(reward_id, params)
          parsed, options = GrowsurfRuby::Campaign::RewardDeleteParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["campaign/%1$s/reward/%2$s", id, reward_id],
            model: GrowsurfRuby::Models::Campaign::RewardDeleteResponse,
            options: options
          )
        end

        # Approves a manually approved reward earned by a participant. This requires
        # `reward:write`. When the request also sets `fulfill` to `true`, it additionally
        # requires `reward:fulfill`.
        #
        # @overload approve(reward_id, id:, fulfill: nil, request_options: {})
        #
        # @param reward_id [String] Path param: Participant reward ID.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param fulfill [Boolean] Body param: Set true to mark the reward as fulfilled after approval.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::RewardApproveResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::RewardApproveParams
        def approve(reward_id, params)
          parsed, options = GrowsurfRuby::Campaign::RewardApproveParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["campaign/%1$s/reward/%2$s/approve", id, reward_id],
            body: parsed,
            model: GrowsurfRuby::Models::Campaign::RewardApproveResponse,
            options: options
          )
        end

        # Marks an approved participant reward as fulfilled.
        #
        # @overload fulfill(reward_id, id:, request_options: {})
        #
        # @param reward_id [String] Participant reward ID.
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::RewardFulfillResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::RewardFulfillParams
        def fulfill(reward_id, params)
          parsed, options = GrowsurfRuby::Campaign::RewardFulfillParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["campaign/%1$s/reward/%2$s/fulfill", id, reward_id],
            model: GrowsurfRuby::Models::Campaign::RewardFulfillResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [GrowsurfRuby::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
