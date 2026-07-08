# typed: strong

module GrowsurfRuby
  module Models
    class ReferralFlowScreenshotsResponse < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::ReferralFlowScreenshotsResponse,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot) }
      attr_reader :referrer

      sig do
        params(
          referrer: GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot::OrHash
        ).void
      end
      attr_writer :referrer

      sig { returns(GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot) }
      attr_reader :referred_friend

      sig do
        params(
          referred_friend: GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot::OrHash
        ).void
      end
      attr_writer :referred_friend

      sig { returns(Integer) }
      attr_accessor :generated_at

      sig do
        params(
          referrer: GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot::OrHash,
          referred_friend: GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot::OrHash,
          generated_at: Integer
        ).returns(T.attached_class)
      end
      def self.new(referrer:, referred_friend:, generated_at:)
      end

      sig do
        override.returns(
          {
            referrer: GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot,
            referred_friend: GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot,
            generated_at: Integer
          }
        )
      end
      def to_hash
      end

      class ReferralFlowScreenshot < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::ReferralFlowScreenshotsResponse::ReferralFlowScreenshot,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :view

        sig { returns(String) }
        attr_accessor :url

        sig { returns(Integer) }
        attr_accessor :width

        sig { returns(Integer) }
        attr_accessor :height

        sig do
          params(view: String, url: String, width: Integer, height: Integer).returns(T.attached_class)
        end
        def self.new(view:, url:, width:, height:)
        end

        sig do
          override.returns({view: String, url: String, width: Integer, height: Integer})
        end
        def to_hash
        end
      end
    end
  end
end
