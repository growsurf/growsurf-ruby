# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      # Custom domain operations: the custom domain that serves a program's landing pages.
      class CustomDomain
        # Retrieves the custom domain that serves a program's landing pages, and whether its
        # DNS is verified. When no custom domain is set, `domain` is `null`. This call does
        # not check DNS; use {#verify} for a live check.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::CampaignCustomDomain]
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["campaign/%1$s/custom-domain", id],
            model: GrowsurfRuby::Models::Campaign::CampaignCustomDomain,
            options: params[:request_options]
          )
        end

        # Sets the custom domain for a program's landing pages, or replaces the current one.
        # Send a hostname such as `refer.piedpiper.com`; `https://` is added if you leave it
        # out. Paths, ports, queries and `http://` return a `400`.
        # Replacing a domain removes the old one right away, and its pages stop loading
        # there. Sending the current domain again changes nothing. A domain used by another
        # program returns a `409`.
        # A new domain starts unverified. Point a `CNAME` record from the hostname to the
        # `dns_record.value` in the response, then call {#verify}.
        #
        # @overload set(id, domain:, request_options: {})
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param domain [String] Body param: The hostname to serve the program's landing pages from, with or without `https://`.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::CampaignCustomDomain]
        #
        # @see GrowsurfRuby::Models::Campaign::CustomDomainSetParams
        def set(id, params)
          parsed, options = GrowsurfRuby::Campaign::CustomDomainSetParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["campaign/%1$s/custom-domain", id],
            body: parsed,
            model: GrowsurfRuby::Models::Campaign::CampaignCustomDomain,
            options: options
          )
        end

        # Checks the custom domain's DNS now and returns the result in `is_verified`. The
        # first time the check passes, GrowSurf sets up the domain's SSL certificate; pages
        # can take a few minutes to load over `https://` after that. If the record is wrong
        # or has not propagated yet, `is_verified` stays `false`; call again later. More than
        # one `CNAME` record on the hostname returns a `400`. Returns a `404` when no custom
        # domain is set. A domain that is already verified is returned as is, without a new
        # check.
        #
        # @overload verify(id, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::CampaignCustomDomain]
        def verify(id, params = {})
          @client.request(
            method: :post,
            path: ["campaign/%1$s/custom-domain/verify", id],
            model: GrowsurfRuby::Models::Campaign::CampaignCustomDomain,
            options: params[:request_options]
          )
        end

        # Removes a program's custom domain. Its landing pages go back to their GrowSurf
        # URL. Returns a `404` when no custom domain is set.
        #
        # @overload delete(id, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::DeleteCampaignCustomDomainResponse]
        def delete(id, params = {})
          @client.request(
            method: :delete,
            path: ["campaign/%1$s/custom-domain", id],
            model: GrowsurfRuby::Models::Campaign::DeleteCampaignCustomDomainResponse,
            options: params[:request_options]
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
end
