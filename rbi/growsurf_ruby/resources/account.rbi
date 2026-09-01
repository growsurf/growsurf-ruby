# typed: strong

module GrowsurfRuby
  module Resources
    class Account
      # Creates a new GrowSurf account. This is the only endpoint that does not require
      # an API key. Before calling it, an authorized account owner must review and
      # approve GrowSurf's [Terms of Service](https://growsurf.com/terms) and [Privacy
      # Policy](https://growsurf.com/privacy). The account starts a 14-day Business
      # trial without a credit card. The response includes an API key for the new
      # account, shown once in the response. The key is a secret: store it in a secret
      # manager and do not put it in logs, screenshots, URLs, model context, analytics,
      # or generated output. The key is locked until the team owner's email address is
      # verified: authenticated program and resource endpoints return a `403` with error
      # code `EMAIL_NOT_VERIFIED_ERROR` until then (resend the email via `POST
      # /team/owner/verification-email`, then retry). A welcome email is sent to the
      # address with the verification link and a set-password link for dashboard access.
      # Accounts whose email is never verified are deleted automatically after 7 days.
      # For security, the API key is rotated the first time the account owner signs in
      # to the GrowSurf dashboard. Some actions (such as emailing participants)
      # additionally require GrowSurf to verify the team first. Calling this endpoint
      # accepts those policies on the account holder's behalf.
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
