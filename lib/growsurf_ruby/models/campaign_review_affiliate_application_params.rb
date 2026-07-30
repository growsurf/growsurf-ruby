# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#review_affiliate_application
    # Either decide a pending application with `status`, or move a denied application's
    # reapplication window with `reapply_allowed_at`. Provide exactly one of those
    # fields.
    class CampaignReviewAffiliateApplicationParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute application_id
      #
      #   @return [String]
      required :application_id, String

      # @!attribute allow_immediate_reapply
      #   When denying, let the applicant reapply right away instead of waiting out the
      #   program's reapplication cooldown. Only valid when `status` is `DENIED`.
      #
      #   @return [Boolean, nil]
      optional :allow_immediate_reapply,
               GrowsurfRuby::Internal::Type::Boolean,
               api_name: :allowImmediateReapply

      # @!attribute reapply_allowed_at
      #   For an already-denied application, move the reapplication window to this earlier
      #   time, in Unix milliseconds. Send without `status`.
      #
      #   @return [Integer, nil]
      optional :reapply_allowed_at, Integer, api_name: :reapplyAllowedAt

      # @!attribute rejection_reason
      #   Short reason recorded with a denial. Only valid when `status` is `DENIED`.
      #   Maximum 255 characters.
      #
      #   @return [String, nil]
      optional :rejection_reason, String, api_name: :rejectionReason

      # @!attribute review_note
      #   Private note recorded with a denial. Only valid when `status` is `DENIED`; never
      #   shown to the applicant. Maximum 500 characters.
      #
      #   @return [String, nil]
      optional :review_note, String, api_name: :reviewNote

      # @!attribute status
      #   The decision. `APPROVED` enrolls the applicant as an affiliate; `DENIED` closes
      #   the application.
      #
      #   @return [Symbol, GrowsurfRuby::Models::CampaignReviewAffiliateApplicationParams::Status, nil]
      optional :status, enum: -> { GrowsurfRuby::CampaignReviewAffiliateApplicationParams::Status }

      # @!method initialize(id:, application_id:, allow_immediate_reapply: nil, reapply_allowed_at: nil, rejection_reason: nil, review_note: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {GrowsurfRuby::Models::CampaignReviewAffiliateApplicationParams} for more
      #   details.
      #
      #   @param id [String]
      #
      #   @param application_id [String]
      #
      #   @param allow_immediate_reapply [Boolean] When denying, let the applicant reapply right away instead of waiting out the
      #
      #   @param reapply_allowed_at [Integer] For an already-denied application, move the reapplication window to this earlier
      #
      #   @param rejection_reason [String] Short reason recorded with a denial. Only valid when `status` is `DENIED`.
      #
      #   @param review_note [String] Private note recorded with a denial. Only valid when `status` is `DENIED`;
      #
      #   @param status [Symbol, GrowsurfRuby::Models::CampaignReviewAffiliateApplicationParams::Status] The decision. `APPROVED` enrolls the applicant as an affiliate; `DENIED` closes
      #
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

      # The decision. `APPROVED` enrolls the applicant as an affiliate; `DENIED` closes
      # the application.
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        APPROVED = :APPROVED
        DENIED = :DENIED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
