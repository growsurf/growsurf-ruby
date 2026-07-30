# frozen_string_literal: true

require_relative "../test_helper"

class GrowsurfRuby::Test::AffiliateNullabilityTest < Minitest::Test
  def test_application_preserves_explicit_runtime_nulls
    model = GrowsurfRuby::AffiliateApplication.new(
      answers: [],
      created_at: 1,
      decided_at: nil,
      email: nil,
      first_name: nil,
      id: "application-id",
      last_name: nil,
      participant_id: nil,
      reapply_allowed_at: nil,
      rejection_reason: nil,
      reviewed_at: nil,
      risk_level: nil,
      status: GrowsurfRuby::AffiliateApplication::Status::PENDING,
      terms_accepted_at: nil
    )

    assert_equal(
      [
        :answers,
        :created_at,
        :decided_at,
        :email,
        :first_name,
        :id,
        :last_name,
        :participant_id,
        :reapply_allowed_at,
        :rejection_reason,
        :reviewed_at,
        :risk_level,
        :status,
        :terms_accepted_at
      ],
      model.to_hash.keys
    )
    assert_nil(model.to_hash[:terms_accepted_at])
  end

  def test_application_requires_every_response_field
    assert(GrowsurfRuby::AffiliateApplication.fields.values.all? { |field| field.fetch(:required) })
    assert(GrowsurfRuby::AffiliateApplication::Answer.fields.values.all? { |field| field.fetch(:required) })
  end

  def test_application_signatures_omit_removed_version_fields
    rbi = File.read(File.expand_path("../../../rbi/growsurf_ruby/models/affiliate_application.rbi", __dir__))
    rbs = File.read(File.expand_path("../../../sig/growsurf_ruby/models/affiliate_application.rbs", __dir__))

    [rbi, rbs].each do |signature|
      refute_match(/application_form_version|terms_version_accepted/, signature)
    end
  end

  def test_application_risk_level_uses_the_published_enum
    assert_equal(
      [:HIGH, :LOW, :MEDIUM],
      GrowsurfRuby::AffiliateApplication::RiskLevel.values.sort
    )
  end

  def test_application_answers_use_the_published_scalar_field_types
    answers = [
      GrowsurfRuby::AffiliateApplication::Answer.new(
        field_id: "website",
        label: "Website",
        type: GrowsurfRuby::AffiliateApplication::Answer::Type::URL,
        value: "https://example.com"
      ),
      GrowsurfRuby::AffiliateApplication::Answer.new(
        field_id: "country",
        label: "Country",
        type: GrowsurfRuby::AffiliateApplication::Answer::Type::COUNTRY,
        value: "US"
      ),
      GrowsurfRuby::AffiliateApplication::Answer.new(
        field_id: "audience_size",
        label: "Audience size",
        type: GrowsurfRuby::AffiliateApplication::Answer::Type::NUMBER,
        value: 1000
      ),
      GrowsurfRuby::AffiliateApplication::Answer.new(
        field_id: "terms",
        label: "I agree",
        type: GrowsurfRuby::AffiliateApplication::Answer::Type::CHECKBOX,
        value: true
      )
    ]

    assert_equal(
      [
        GrowsurfRuby::AffiliateApplication::Answer::Type::URL,
        GrowsurfRuby::AffiliateApplication::Answer::Type::COUNTRY,
        GrowsurfRuby::AffiliateApplication::Answer::Type::NUMBER,
        GrowsurfRuby::AffiliateApplication::Answer::Type::CHECKBOX
      ],
      answers.map(&:type)
    )
    assert_equal(["https://example.com", "US", 1000, true], answers.map(&:value))
  end

  def test_application_answers_reject_non_scalar_values
    [nil, ["value"], {value: true}].each do |value|
      answer = GrowsurfRuby::AffiliateApplication::Answer.new(
        field_id: "question",
        label: "Question",
        type: GrowsurfRuby::AffiliateApplication::Answer::Type::TEXT,
        value: value
      )

      assert_raises(GrowsurfRuby::Errors::ConversionError) { answer.value }
    end
  end

  def test_application_does_not_expose_removed_structured_fields
    removed_fields = [:audience, :country, :experience, :promotion_channels, :social_urls, :website_url]

    removed_fields.each do |field|
      refute_respond_to(GrowsurfRuby::AffiliateApplication.new, field)
    end
  end

  def test_invite_preserves_explicit_runtime_nulls
    model = GrowsurfRuby::AffiliateInvite.new(
      accepted_at: nil,
      first_name: nil,
      last_name: nil,
      revoked_at: nil
    )

    assert_equal([:accepted_at, :first_name, :last_name, :revoked_at], model.to_hash.keys)
    assert(model.to_hash.values.all?(&:nil?))
  end
end
