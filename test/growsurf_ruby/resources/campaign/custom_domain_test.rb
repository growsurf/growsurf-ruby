# frozen_string_literal: true

require_relative "../../test_helper"

class GrowsurfRuby::Test::Resources::Campaign::CustomDomainTest < Minitest::Test
  extend Minitest::Serial
  include WebMock::API

  BASE_URL = "http://localhost"
  PATH = "#{BASE_URL}/campaign/abc123/custom-domain".freeze

  def setup
    super
    WebMock.enable!
    @growsurf = GrowsurfRuby::Client.new(base_url: BASE_URL, api_key: "My API Key")
  end

  def teardown
    WebMock.reset!
    WebMock.disable!
    super
  end

  def test_resource_is_attached
    assert_instance_of(GrowsurfRuby::Resources::Campaign::CustomDomain, @growsurf.campaign.custom_domain)
  end

  def test_requests_use_the_rest_methods_and_paths
    domain = {
      domain: "https://refer.piedpiper.com",
      isVerified: false,
      verifiedAt: nil,
      dnsRecord: {type: "CNAME", name: "refer.piedpiper.com", value: "grow.surf"},
      createdAt: 1_761_955_200_000,
      updatedAt: 1_761_955_200_000
    }
    stub_request(:get, PATH).to_return_json(status: 200, body: domain)
    stub_request(:put, PATH).to_return_json(status: 200, body: domain)
    stub_request(:post, "#{PATH}/verify").to_return_json(
      status: 200,
      body: domain.merge(isVerified: true, verifiedAt: 1_761_955_260_000)
    )
    stub_request(:delete, PATH).to_return_json(
      status: 200,
      body: {domain: "https://refer.piedpiper.com", success: true}
    )

    retrieved = @growsurf.campaign.custom_domain.retrieve("abc123")
    set = @growsurf.campaign.custom_domain.set("abc123", domain: "refer.piedpiper.com")
    verified = @growsurf.campaign.custom_domain.verify("abc123")
    deleted = @growsurf.campaign.custom_domain.delete("abc123")

    assert_requested(:get, PATH)
    assert_requested(:put, PATH, body: {domain: "refer.piedpiper.com"})
    assert_requested(:post, "#{PATH}/verify")
    assert_requested(:delete, PATH)

    assert_instance_of(GrowsurfRuby::Campaign::CampaignCustomDomain, retrieved)
    assert_equal("https://refer.piedpiper.com", set.domain)
    assert_equal(false, set.is_verified)
    assert_nil(set.verified_at)
    assert_equal(:CNAME, set.dns_record.type)
    assert_equal("grow.surf", set.dns_record.value)
    assert_equal(1_761_955_200_000, set.created_at)
    assert_equal(true, verified.is_verified)
    assert_equal(1_761_955_260_000, verified.verified_at)
    assert_instance_of(GrowsurfRuby::Campaign::DeleteCampaignCustomDomainResponse, deleted)
    assert_equal(true, deleted.success)
  end

  def test_retrieve_without_a_custom_domain_returns_nulls
    stub_request(:get, PATH).to_return_json(
      status: 200,
      body: {
        domain: nil,
        isVerified: false,
        verifiedAt: nil,
        dnsRecord: nil,
        createdAt: nil,
        updatedAt: nil
      }
    )

    response = @growsurf.campaign.custom_domain.retrieve("abc123")

    assert_nil(response.domain)
    assert_nil(response.dns_record)
    assert_nil(response.created_at)
  end
end
