# frozen_string_literal: true

require_relative "../../test_helper"

# Regression: enumerators passed as `rules` were sent as their `#to_s` text,
# not as a JSON array.
class GrowsurfRuby::Test::Resources::Campaign::GroupsEnumerableRulesTest < Minitest::Test
  extend Minitest::Serial
  include WebMock::API

  RULES = [{type: "EMAIL", value: "a@hooli.com"}, {type: "DOMAIN", value: "hooli.com"}].freeze
  PATH = "http://localhost/campaign/c1/groups/g1"
  GROUP = {
    id: "g1",
    createdAt: 0,
    name: "VIP",
    order: 0,
    rules: RULES,
    signupCode: "VIP",
    updatedAt: 0
  }.freeze

  def setup
    super
    WebMock.enable!
    @growsurf = GrowsurfRuby::Client.new(base_url: "http://localhost", api_key: "My API Key")
  end

  def teardown
    WebMock.reset!
    WebMock.disable!
    super
  end

  def test_update_sends_enumerable_rules_as_array
    {
      "Enumerator" => -> { RULES.each },
      "Enumerator::Lazy" => -> { RULES.lazy.map { _1 } },
      "Set" => -> { Set.new(RULES) }
    }.each do |label, make_rules|
      sent = nil
      stub_request(:patch, PATH).to_return_json(status: 200, body: GROUP).with { sent = JSON.parse(_1.body) }
      @growsurf.campaign.groups.update("g1", id: "c1", rules: make_rules.call)
      assert_equal({"rules" => RULES.map { _1.transform_keys(&:to_s) }}, sent, label)
      WebMock.reset!
    end
  end
end
