# frozen_string_literal: true

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

        # Updates a program's design configuration. Only the fields you send are changed;
        # anything you leave out is untouched (arrays such as `signup.fields` replace
        # wholesale). Unknown fields, fields not available for the program type, and
        # invalid values return a `400`. Landing-page custom code and JavaScript are not
        # editable via the API.
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
