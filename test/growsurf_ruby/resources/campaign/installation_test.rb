# frozen_string_literal: true

require_relative "../../test_helper"

class GrowsurfRuby::Test::Resources::Campaign::InstallationTest < GrowsurfRuby::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.installation.retrieve("id")

    assert_pattern do
      response => ^(GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown])
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.installation.update("id", {})

    assert_pattern do
      response => ^(GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown])
    end
  end
end
