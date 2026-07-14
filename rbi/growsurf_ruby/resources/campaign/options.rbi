# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      class Options
        # Retrieves a program's options — the same surface as the dashboard Program
        # Editor's **Options** tab. Includes reward/fraud approval, anti-fraud lists +
        # toggles, referral cookie/credit windows, reCAPTCHA, payout threshold + tax
        # settings (affiliate only), and notification-email settings.
        # `fraud.recaptcha.secretKey` is never returned.
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

        # Updates a program's options. Only the fields you send are changed. Some fields
        # are program-type specific (`requireManualRewardApproval`/`autoFulfillRewards`
        # are referral-only; `payoutThreshold`/`taxDocumentation` are affiliate-only, and
        # affiliate programs require `requireParticipantAuth: true`).
        # `fraud.recaptcha.secretKey` is write-only. `referralCreditWindowDays: null`
        # means "never expires".
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
          # Partial options configuration to merge.
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
