# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      class Emails
        # Retrieves a program's email configuration — the same surface as the dashboard
        # Program Editor's **Emails** tab. To see the full object with every field and its
        # current value, `GET` this resource, then `PATCH` back only the fields you want to
        # change.
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
        # anything you leave out is untouched. The request body is a partial email
        # configuration object. To see the full object with every field and its current
        # value, `GET` this resource, then `PATCH` back only the fields you want to change.
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
