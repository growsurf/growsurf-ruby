# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      class Options
        # Retrieves a program's options — the same surface as the dashboard Program
        # Editor's **Options** tab. Includes reward/fraud approval, anti-fraud lists +
        # toggles, referral cookie/credit windows, reCAPTCHA, payout threshold + tax
        # settings (affiliate only), and notification-email settings.
        # `fraud.recaptcha.secretKey` is never returned.
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
            path: ["campaign/%1$s/options", id],
            model: GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown],
            options: params[:request_options]
          )
        end

        # Updates a program's options. Only the fields you send are changed. Some fields
        # are program-type specific (`requireManualRewardApproval`/`autoFulfillRewards`
        # are referral-only; `payoutThreshold`/`taxDocumentation` are affiliate-only, and
        # affiliate programs require `requireParticipantAuth: true`).
        # `fraud.recaptcha.secretKey` is write-only. `referralCreditWindowDays: null`
        # means "never expires".
        #
        # @overload update(id, body, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param body [Hash{Symbol=>Object}] Partial options configuration to merge.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Hash{Symbol=>Object}]
        def update(id, body, params = {})
          @client.request(
            method: :patch,
            path: ["campaign/%1$s/options", id],
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
