# frozen_string_literal: true

require_relative "../../test_helper"

class Growsurf::Test::Resources::Campaign::RewardTest < Growsurf::Test::ResourceTest
  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.reward.delete("rewardId", id: "id")

    assert_pattern do
      response => Growsurf::Models::Campaign::RewardDeleteResponse
    end

    assert_pattern do
      response => {
        success: Growsurf::Internal::Type::Boolean
      }
    end
  end

  def test_approve_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.reward.approve("rewardId", id: "id")

    assert_pattern do
      response => Growsurf::Models::Campaign::RewardApproveResponse
    end

    assert_pattern do
      response => {
        success: Growsurf::Internal::Type::Boolean
      }
    end
  end

  def test_fulfill_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.reward.fulfill("rewardId", id: "id")

    assert_pattern do
      response => Growsurf::Models::Campaign::RewardFulfillResponse
    end

    assert_pattern do
      response => {
        success: Growsurf::Internal::Type::Boolean
      }
    end
  end
end
