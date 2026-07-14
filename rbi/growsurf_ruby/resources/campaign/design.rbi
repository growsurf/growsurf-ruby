# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      class Design
        # Retrieves a program's design configuration — the same surface as the dashboard
        # Program Editor's **Design** tab: the GrowSurf window layout, header, share
        # channels + invite, signup form, portal/landing pages, theme styling, and the
        # referral/affiliate summary + status sections. This is a large object whose
        # available fields depend on the program type; the response includes every field
        # and its current value, which is the same shape you send back on `PATCH`.
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

        # Updates a program's design configuration. Only the fields you send are changed;
        # anything you leave out is untouched (arrays such as `signup.fields` replace
        # wholesale). Unknown fields, fields not available for the program type, and
        # invalid values return a `400`. Landing-page custom code and JavaScript are not
        # editable via the API.
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
          # Partial design configuration to merge.
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
