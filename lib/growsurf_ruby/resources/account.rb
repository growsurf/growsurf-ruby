# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Account
      # Creates a new GrowSurf account. This is the only endpoint that does not require
      # an API key. The response includes an API key for the new account, shown once in
      # the response. The key is locked until the team owner's email address is
      # verified: authenticated program and resource endpoints return a `403` with error
      # code `EMAIL_NOT_VERIFIED_ERROR` until then (resend the email via `POST
      # /team/owner/verification-email`, then retry). A welcome email is sent to the
      # address with the verification link and a set-password link for dashboard access.
      # Accounts whose email is never verified are deleted automatically after 7 days.
      # For security, the API key is rotated the first time the account owner signs in
      # to the GrowSurf dashboard. Some actions (such as emailing participants)
      # additionally require GrowSurf to verify the team first. By creating an account
      # you agree, on behalf of the account holder, to GrowSurf's [Terms of
      # Service](https://growsurf.com/terms) and [Privacy
      # Policy](https://growsurf.com/privacy).
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
