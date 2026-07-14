# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      class Emails
        # Retrieves a program's email configuration — the same surface as the dashboard
        # Program Editor's **Emails** tab. Returns each editable email template
        # (`subject`, `preheader`, `body`, `isEnabled`) plus the `settings` block (sender,
        # contact, and design). The set of email templates returned depends on the program
        # type (referral vs affiliate).
        sig do
          params(
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T::Hash[Symbol, T.anything])
        end
        def retrieve(
          # GrowSurf program ID.
          id,
          request_options: {}
        )
        end

        # Updates a program's email configuration. Only the fields you send are changed;
        # omitted fields are left untouched. You may only write the email templates the
        # dashboard exposes for the program type — writing a template that is not
        # available for the program type returns a `400`. Some fields are read-only
        # (`settings.sender.fromEmail`, whose custom value requires dashboard domain
        # verification).
        sig do
          params(
            id: String,
            body: T::Hash[Symbol, T.anything],
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T::Hash[Symbol, T.anything])
        end
        def update(
          # GrowSurf program ID.
          id,
          # Partial email configuration to merge.
          body,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: GrowsurfRuby::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
