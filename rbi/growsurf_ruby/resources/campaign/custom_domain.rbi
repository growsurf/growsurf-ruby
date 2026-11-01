# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      # Custom domain operations: the custom domain that serves a program's landing pages.
      class CustomDomain
        # Retrieves the custom domain that serves a program's landing pages, and whether its
        # DNS is verified. When no custom domain is set, `domain` is `null`. This call does
        # not check DNS; use `verify` for a live check.
        sig do
          params(
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::CampaignCustomDomain)
        end
        def retrieve(
          # GrowSurf program ID.
          id,
          request_options: {}
        )
        end

        # Sets the custom domain for a program's landing pages, or replaces the current one.
        # Send a hostname such as `refer.piedpiper.com`; `https://` is added if you leave it
        # out. Paths, ports, queries and `http://` return a `400`.
        # Replacing a domain removes the old one right away, and its pages stop loading
        # there. Sending the current domain again changes nothing. A domain used by another
        # program returns a `409`.
        # A new domain starts unverified. Point a `CNAME` record from the hostname to the
        # `dns_record.value` in the response, then call `verify`.
        sig do
          params(
            id: String,
            domain: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::CampaignCustomDomain)
        end
        def set(
          # Path param: GrowSurf program ID.
          id,
          # Body param: The hostname to serve the program's landing pages from, with or
          # without `https://`. Up to 255 characters.
          domain:,
          request_options: {}
        )
        end

        # Checks the custom domain's DNS now and returns the result in `is_verified`. The
        # first time the check passes, GrowSurf sets up the domain's SSL certificate; pages
        # can take a few minutes to load over `https://` after that. If the record is wrong
        # or has not propagated yet, `is_verified` stays `false`; call again later. More than
        # one `CNAME` record on the hostname returns a `400`. Returns a `404` when no custom
        # domain is set. A domain that is already verified is returned as is, without a new
        # check.
        sig do
          params(
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::CampaignCustomDomain)
        end
        def verify(
          # GrowSurf program ID.
          id,
          request_options: {}
        )
        end

        # Removes a program's custom domain. Its landing pages go back to their GrowSurf
        # URL. Returns a `404` when no custom domain is set.
        sig do
          params(
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::DeleteCampaignCustomDomainResponse)
        end
        def delete(
          # GrowSurf program ID.
          id,
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
