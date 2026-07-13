# typed: strong

module GrowsurfRuby
  module Resources
    class Team
      sig do
        params(request_options: GrowsurfRuby::RequestOptions::OrHash).returns(
          GrowsurfRuby::Models::Team
        )
      end
      def retrieve(request_options: {})
      end

      sig do
        params(
          name: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(GrowsurfRuby::Models::Team)
      end
      def update(name:, request_options: {})
      end

      sig do
        params(request_options: GrowsurfRuby::RequestOptions::OrHash).returns(
          GrowsurfRuby::Models::TeamRotateAPIKeyResponse
        )
      end
      def rotate_api_key(request_options: {})
      end

      sig do
        params(request_options: GrowsurfRuby::RequestOptions::OrHash).returns(
          GrowsurfRuby::Models::Team
        )
      end
      def request_verification(request_options: {})
      end

      sig do
        params(request_options: GrowsurfRuby::RequestOptions::OrHash).returns(
          GrowsurfRuby::Models::TeamResendOwnerVerificationEmailResponse
        )
      end
      def resend_owner_verification_email(request_options: {})
      end

      sig { params(client: GrowsurfRuby::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
