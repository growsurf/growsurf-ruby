# typed: strong

module GrowsurfRuby
  module Resources
    class Account
      sig do
        params(
          email: String,
          company: String,
          first_name: String,
          last_name: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(GrowsurfRuby::Models::AccountCreateResponse)
      end
      def create(
        email:,
        company: nil,
        first_name: nil,
        last_name: nil,
        request_options: {}
      )
      end

      sig { params(client: GrowsurfRuby::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
