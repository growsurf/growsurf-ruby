# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#capture_referral_flow_screenshots
    class CampaignCaptureReferralFlowScreenshotsResponse < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute expires_at
      #   When every screenshot URL in this response stops working. Capture again after
      #   this time for a fresh view.
      #
      #   @return [Time]
      required :expires_at, Time, api_name: :expiresAt

      # @!attribute generated_at
      #   When these screenshots were rendered.
      #
      #   @return [Time]
      required :generated_at, Time, api_name: :generatedAt

      # @!attribute screenshots
      #   One preview image per view: the referrer window a participant sees, and the
      #   referred-friend experience.
      #
      #   @return [Array<GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot>]
      required :screenshots,
               -> {
                 GrowsurfRuby::Internal::Type::ArrayOf[
                   GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot
                 ]
               }

      # @!method initialize(expires_at:, generated_at:, screenshots:)
      #   Some parameter documentations has been truncated, see
      #   {GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse} for more
      #   details.
      #
      #   @param expires_at [Time] When every screenshot URL in this response stops working. Capture again after th
      #
      #   @param generated_at [Time] When these screenshots were rendered.
      #
      #   @param screenshots [Array<GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot>] One preview image per view: the referrer window a participant sees, and the refe

      class Screenshot < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute content_type
        #   Media type of the image, such as `image/png`.
        #
        #   @return [String]
        required :content_type, String, api_name: :contentType

        # @!attribute expires_at
        #   When this screenshot URL stops working.
        #
        #   @return [Time]
        required :expires_at, Time, api_name: :expiresAt

        # @!attribute height
        #   Image height in pixels.
        #
        #   @return [Integer]
        required :height, Integer

        # @!attribute label
        #   Human-readable name for the view, suitable for a caption.
        #
        #   @return [String]
        required :label, String

        # @!attribute url
        #   Private URL of the image. It expires at `expiresAt`; do not store it.
        #
        #   @return [String]
        required :url, String

        # @!attribute view
        #   Which part of the referral flow the image shows. `referrer` is the window a
        #   participant sees; `referredFriend` is the experience their referred friend sees.
        #
        #   @return [Symbol, GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot::View]
        required :view, enum: -> { GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot::View }

        # @!attribute width
        #   Image width in pixels.
        #
        #   @return [Integer]
        required :width, Integer

        # @!method initialize(content_type:, expires_at:, height:, label:, url:, view:, width:)
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot}
        #   for more details.
        #
        #   @param content_type [String] Media type of the image, such as `image/png`.
        #
        #   @param expires_at [Time] When this screenshot URL stops working.
        #
        #   @param height [Integer] Image height in pixels.
        #
        #   @param label [String] Human-readable name for the view, suitable for a caption.
        #
        #   @param url [String] Private URL of the image. It expires at `expiresAt`; do not store it.
        #
        #   @param view [Symbol, GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot::View] Which part of the referral flow the image shows. `referrer` is the window a parti
        #
        #   @param width [Integer] Image width in pixels.

        # Which part of the referral flow the image shows. `referrer` is the window a
        # participant sees; `referredFriend` is the experience their referred friend sees.
        #
        # @see GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot#view
        module View
          extend GrowsurfRuby::Internal::Type::Enum

          REFERRER = :referrer
          REFERRED_FRIEND = :referredFriend

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
