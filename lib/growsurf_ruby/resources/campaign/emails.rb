# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      class Emails
        # Retrieves a program's email configuration — the same surface as the dashboard
        # Program Editor's **Emails** tab. Returns each editable email template
        # (`subject`, `preheader`, `body`, `isEnabled`) plus the `settings` block (sender,
        # contact, and design). The set of email templates returned depends on the program
        # type (referral vs affiliate).
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
            path: ["campaign/%1$s/emails", id],
            model: GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown],
            options: params[:request_options]
          )
        end

        # Updates a program's email configuration. Only the fields you send are changed;
        # omitted fields are left untouched. You may only write the email templates the
        # dashboard exposes for the program type — writing a template that is not
        # available for the program type returns a `400`. Some fields are read-only
        # (`settings.sender.fromEmail`, whose custom value requires dashboard domain
        # verification).
        #
        # @overload update(id, body, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param body [Hash{Symbol=>Object}] Partial email configuration to merge.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Hash{Symbol=>Object}]
        def update(id, body, params = {})
          @client.request(
            method: :patch,
            path: ["campaign/%1$s/emails", id],
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
