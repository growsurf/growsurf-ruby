# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      class Installation
        # Retrieves a program's installation configuration — the same surface as the
        # dashboard Program Editor's **Installation** tab (plus the Mobile SDK settings).
        # Includes the referral trigger (referral programs only), signup tracking method,
        # share URL and whitelist, custom-form signup settings, and mobile SDK settings.
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

        # Updates a program's installation configuration. Only the fields you send are
        # changed; omitted fields are left untouched. `referralTrigger` is only available
        # for referral programs. `mobile.publicKey` is read-only; if no key exists yet,
        # enabling `mobile.isEnabled` creates one. Changing `shareUrl` re-resolves its
        # redirect destinations, which may take a moment to complete. URLs must include an
        # explicit `http://` or `https://` scheme.
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
          # Partial installation configuration to merge.
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
