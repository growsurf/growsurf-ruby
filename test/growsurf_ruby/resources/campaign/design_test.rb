# frozen_string_literal: true

require_relative "../../test_helper"

class GrowsurfRuby::Test::Resources::Campaign::DesignTest < GrowsurfRuby::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.design.retrieve("id")

    assert_pattern do
      response => ^(GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown])
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.design.update("id", {})

    assert_pattern do
      response => ^(GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown])
    end
  end
end
