# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      # Participant reward retrieval and manual reward operations.
      class Reward
        # Removes a manually approved participant reward that has not already been
        # approved.
        sig do
          params(
            reward_id: String,
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::RewardDeleteResponse)
        end
        def delete(
          # Participant reward ID.
          reward_id,
          # GrowSurf program ID.
          id:,
          request_options: {}
        )
        end

        # Approves a manually approved reward earned by a participant. Requires
        # `reward:write`. Passing `fulfill: true` also requires `reward:fulfill`.
        sig do
          params(
            reward_id: String,
            id: String,
            fulfill: T::Boolean,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::RewardApproveResponse)
        end
        def approve(
          # Path param: Participant reward ID.
          reward_id,
          # Path param: GrowSurf program ID.
          id:,
          # Body param: Set true to mark the reward as fulfilled after approval.
          fulfill: nil,
          request_options: {}
        )
        end

        # Marks an approved participant reward as fulfilled. Requires `reward:fulfill`.
        sig do
          params(
            reward_id: String,
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::RewardFulfillResponse)
        end
        def fulfill(
          # Participant reward ID.
          reward_id,
          # GrowSurf program ID.
          id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: GrowsurfRuby::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
