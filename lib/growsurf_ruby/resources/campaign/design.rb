# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      class Design
        # Retrieves a program's design configuration — the same surface as the dashboard
        # Program Editor's **Design** tab (window layout, header, share channels, signup
        # form, portal/landing pages, theme styling, and summary/status sections).
        #
        # This is a large, deeply nested object whose available fields depend on the
        # program type. See the API reference for the full field list.
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
            path: ["campaign/%1$s/design", id],
            model: GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown],
            options: params[:request_options]
          )
        end

        # Updates a program's design configuration. Only the fields you send are changed (a
        # surgical merge; arrays such as `signup.fields` replace wholesale). Unknown
        # fields, fields not available for the program type, and invalid values return a
        # `400`.
        #
        # The request body is a partial {CampaignDesign} object — see the API reference for
        # the full field list.
        #
        # @overload update(id, body, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param body [Hash{Symbol=>Object}] Partial design configuration to merge.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Hash{Symbol=>Object}]
        def update(id, body, params = {})
          @client.request(
            method: :patch,
            path: ["campaign/%1$s/design", id],
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
