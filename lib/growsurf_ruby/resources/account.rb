# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Account
      # Creates a new GrowSurf account and returns an API key shown once in the
      # response. The key is locked until the team owner's email address is verified and
      # rotates the first time the account owner signs in to the GrowSurf dashboard.
      # Accounts whose email is never verified are deleted automatically after 7 days.
      #
      # @overload create(email:, company: nil, first_name: nil, last_name: nil, request_options: {})
      #
      # @param email [String] The email address for the new GrowSurf account. Personal emails and disposable email addresses are not accepted.
      #
      # @param company [String] Company name for the new account.
      #
      # @param first_name [String] First name for the new account owner.
      #
      # @param last_name [String] Last name for the new account owner.
      #
      # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [GrowsurfRuby::Models::AccountCreateResponse]
      #
      # @see GrowsurfRuby::Models::AccountCreateParams
      def create(params)
        parsed, options = GrowsurfRuby::AccountCreateParams.dump_request(params)
        options[:extra_headers] = options[:extra_headers].to_h.merge("authorization" => nil)
        @client.request(
          method: :post,
          path: "accounts",
          body: parsed,
          model: GrowsurfRuby::Models::AccountCreateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [GrowsurfRuby::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
