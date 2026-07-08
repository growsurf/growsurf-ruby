# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      class Installation
        # Retrieves a program's installation configuration — the same surface as the
        # dashboard Program Editor's **Installation** tab (signup and mobile SDK
        # installation settings).
        #
        # This is a nested object whose available fields depend on the program type. To
        # see the full object with every field and its current value, `GET` this
        # resource, then `PATCH` back only the fields you want to change.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Hash{Symbol=>Object}]
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["campaign/%1$s/installation", id],
            model: GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown],
            options: params[:request_options]
          )
        end

        # Updates a program's installation configuration. Only the fields you send are
        # changed; anything you leave out is untouched. Unknown fields, fields not
        # available for the program type, and invalid values return a `400`.
        #
        # The request body is a partial {CampaignInstallation} object. To see the full
        # object with every field and its current value, `GET` this resource, then
        # `PATCH` back only the fields you want to change.
        #
        # @overload update(id, body, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param body [Hash{Symbol=>Object}] Partial installation configuration to merge.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Hash{Symbol=>Object}]
        def update(id, body, params = {})
          @client.request(
            method: :patch,
            path: ["campaign/%1$s/installation", id],
            body: body,
            model: GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown],
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
