# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      class Options
        # Retrieves a program's options — the same surface as the dashboard Program
        # Editor's **Options** tab. Includes the attribution model, reward/fraud approval,
        # anti-fraud lists + toggles, referral cookie/credit windows, reCAPTCHA, affiliate
        # enrollment + application review, payout threshold + tax settings (affiliate
        # only), notification-email settings, and the program's languages.
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
        # are referral-only; `affiliateApplicationMode`/`affiliateReapplicationPolicy`
        # and `payoutThreshold`/`taxDocumentation` are affiliate-only, and affiliate
        # programs require `requireParticipantAuth: true`). `fraud.recaptcha.secretKey`
        # is write-only. `referralCreditWindowDays: null` means "never expires".
        # Turning on `languages.additionalLanguages` returns `403` if your account does
        # not include additional languages. While any are on, every `languages` change,
        # including turning them off, returns the same `403`.
        # Changes to participant email content are checked before saving. Rejected content
        # returns `400` and is not saved. A concurrent edit can return `409`; reload the
        # program before retrying.
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
