# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#get_referral_flow_screenshots
    class ReferralFlowScreenshotsResponse < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute referrer
      #   Screenshot of the referral flow as a signed-in referrer sees it.
      #
      #   @return [GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot]
      required :referrer, -> { GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot }

      # @!attribute referred_friend
      #   Screenshot of the referral flow as the referred friend sees it.
      #
      #   @return [GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot]
      required :referred_friend,
               -> { GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot },
               api_name: :referredFriend

      # @!attribute generated_at
      #   When the screenshots were generated, as a Unix timestamp in milliseconds.
      #
      #   @return [Integer]
      required :generated_at, Integer, api_name: :generatedAt

      # @!method initialize(referrer:, referred_friend:, generated_at:)
      #
      #   @param referrer [GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot] Screenshot of the referral flow as a signed-in referrer sees it.
      #
      #   @param referred_friend [GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot] Screenshot of the referral flow as the referred friend sees it.
      #
      #   @param generated_at [Integer] When the screenshots were generated, as a Unix timestamp in milliseconds.

      class ReferralFlowScreenshot < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute view
        #   The referral-flow view captured in this screenshot.
        #
        #   @return [String]
        required :view, String

        # @!attribute url
        #   Image URL for the generated screenshot.
        #
        #   @return [String]
        required :url, String

        # @!attribute width
        #   Screenshot viewport width in CSS pixels.
        #
        #   @return [Integer]
        required :width, Integer

        # @!attribute height
        #   Screenshot viewport height in CSS pixels.
        #
        #   @return [Integer]
        required :height, Integer

        # @!method initialize(view:, url:, width:, height:)
        #
        #   @param view [String] The referral-flow view captured in this screenshot.
        #
        #   @param url [String] Image URL for the generated screenshot.
        #
        #   @param width [Integer] Screenshot viewport width in CSS pixels.
        #
        #   @param height [Integer] Screenshot viewport height in CSS pixels.
      end
    end
  end
end
