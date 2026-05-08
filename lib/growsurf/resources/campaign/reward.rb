# frozen_string_literal: true

module Growsurf
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
        # @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Growsurf::Models::Campaign::RewardDeleteResponse]
        #
        # @see Growsurf::Models::Campaign::RewardDeleteParams
        def delete(reward_id, params)
          parsed, options = Growsurf::Campaign::RewardDeleteParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["campaign/%1$s/reward/%2$s", id, reward_id],
            model: Growsurf::Models::Campaign::RewardDeleteResponse,
            options: options
          )
        end

        # Approves a manually approved reward earned by a participant.
        #
        # @overload approve(reward_id, id:, fulfill: nil, request_options: {})
        #
        # @param reward_id [String] Path param: Participant reward ID.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param fulfill [Boolean] Body param: Set true to mark the reward as fulfilled after approval.
        #
        # @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Growsurf::Models::Campaign::RewardApproveResponse]
        #
        # @see Growsurf::Models::Campaign::RewardApproveParams
        def approve(reward_id, params)
          parsed, options = Growsurf::Campaign::RewardApproveParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["campaign/%1$s/reward/%2$s/approve", id, reward_id],
            body: parsed,
            model: Growsurf::Models::Campaign::RewardApproveResponse,
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
        # @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Growsurf::Models::Campaign::RewardFulfillResponse]
        #
        # @see Growsurf::Models::Campaign::RewardFulfillParams
        def fulfill(reward_id, params)
          parsed, options = Growsurf::Campaign::RewardFulfillParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["campaign/%1$s/reward/%2$s/fulfill", id, reward_id],
            model: Growsurf::Models::Campaign::RewardFulfillResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Growsurf::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
