# typed: strong

module GrowsurfRuby
  module Models
    class CampaignCaptureReferralFlowScreenshotsResponse < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      # When every screenshot URL in this response stops working. Capture again after
      # this time for a fresh view.
      sig { returns(Time) }
      attr_accessor :expires_at

      # When these screenshots were rendered.
      sig { returns(Time) }
      attr_accessor :generated_at

      # One preview image per view: the referrer window a participant sees, and the
      # referred-friend experience.
      sig do
        returns(
          T::Array[
            GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot
          ]
        )
      end
      attr_accessor :screenshots

      sig do
        params(
          expires_at: Time,
          generated_at: Time,
          screenshots:
            T::Array[
              GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # When every screenshot URL in this response stops working. Capture again after
        # this time for a fresh view.
        expires_at:,
        # When these screenshots were rendered.
        generated_at:,
        # One preview image per view: the referrer window a participant sees, and the
        # referred-friend experience.
        screenshots:
      )
      end

      sig do
        override.returns(
          {
            expires_at: Time,
            generated_at: Time,
            screenshots:
              T::Array[
                GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot
              ]
          }
        )
      end
      def to_hash
      end

      class Screenshot < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # Media type of the image, such as `image/png`.
        sig { returns(String) }
        attr_accessor :content_type

        # When this screenshot URL stops working.
        sig { returns(Time) }
        attr_accessor :expires_at

        # Image height in pixels.
        sig { returns(Integer) }
        attr_accessor :height

        # Human-readable name for the view, suitable for a caption.
        sig { returns(String) }
        attr_accessor :label

        # Private URL of the image. It expires at `expiresAt`; do not store it.
        sig { returns(String) }
        attr_accessor :url

        # Which part of the referral flow the image shows. `referrer` is the window a
        # participant sees; `referredFriend` is the experience their referred friend sees.
        sig do
          returns(
            GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot::View::TaggedSymbol
          )
        end
        attr_accessor :view

        # Image width in pixels.
        sig { returns(Integer) }
        attr_accessor :width

        sig do
          params(
            content_type: String,
            expires_at: Time,
            height: Integer,
            label: String,
            url: String,
            view:
              GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot::View::OrSymbol,
            width: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Media type of the image, such as `image/png`.
          content_type:,
          # When this screenshot URL stops working.
          expires_at:,
          # Image height in pixels.
          height:,
          # Human-readable name for the view, suitable for a caption.
          label:,
          # Private URL of the image. It expires at `expiresAt`; do not store it.
          url:,
          # Which part of the referral flow the image shows. `referrer` is the window a
          # participant sees; `referredFriend` is the experience their referred friend sees.
          view:,
          # Image width in pixels.
          width:
        )
        end

        sig do
          override.returns(
            {
              content_type: String,
              expires_at: Time,
              height: Integer,
              label: String,
              url: String,
              view:
                GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot::View::TaggedSymbol,
              width: Integer
            }
          )
        end
        def to_hash
        end

        # Which part of the referral flow the image shows. `referrer` is the window a
        # participant sees; `referredFriend` is the experience their referred friend sees.
        module View
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot::View
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REFERRER =
            T.let(
              :referrer,
              GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot::View::TaggedSymbol
            )
          REFERRED_FRIEND =
            T.let(
              :referredFriend,
              GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot::View::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Models::CampaignCaptureReferralFlowScreenshotsResponse::Screenshot::View::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
