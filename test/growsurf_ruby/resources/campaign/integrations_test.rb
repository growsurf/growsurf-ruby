# frozen_string_literal: true

require_relative "../../test_helper"

class GrowsurfRuby::Test::Resources::Campaign::IntegrationsTest < GrowsurfRuby::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @growsurf.campaign.integrations.list("id")

    assert_pattern do
      response => GrowsurfRuby::Models::Campaign::IntegrationListResponse
    end

    assert_pattern do
      response => {
        integrations: ^(GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::Integration])
      }
    end
  end
end
