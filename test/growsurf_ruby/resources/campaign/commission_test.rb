# frozen_string_literal: true

require_relative "../../test_helper"

class GrowsurfRuby::Test::Resources::Campaign::CommissionTest < GrowsurfRuby::Test::ResourceTest
  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.commission.delete("commissionId", id: "id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::CommissionDeleteResponse
    end

    assert_pattern do
      response => {
        success: GrowsurfRuby::Internal::Type::Boolean
      }
    end
  end

  def test_approve_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.commission.approve("commissionId", id: "id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::CommissionApproveResponse
    end

    assert_pattern do
      response => {
        success: GrowsurfRuby::Internal::Type::Boolean
      }
    end
  end
end
