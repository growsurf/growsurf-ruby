# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      class Participant
        # Retrieves a single participant by GrowSurf participant ID or email address.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Campaign::CampaignParticipant)
        end
        def retrieve(
          # GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # GrowSurf program ID.
          id:,
          request_options: {}
        )
        end

        # Updates a participant by GrowSurf participant ID or email address.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            email: String,
            first_name: String,
            last_name: String,
            metadata: T::Hash[Symbol, T.anything],
            notes: String,
            paypal_email: String,
            referral_status:
              GrowsurfRuby::Campaign::ParticipantUpdateParams::ReferralStatus::OrSymbol,
            referred_by: String,
            unsubscribed: T::Boolean,
            vanity_keys: T::Array[String],
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Campaign::CampaignParticipant)
        end
        def update(
          # Path param: GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # Path param: GrowSurf program ID.
          id:,
          # Body param
          email: nil,
          # Body param
          first_name: nil,
          # Body param
          last_name: nil,
          # Body param: Shallow custom metadata object.
          metadata: nil,
          # Body param: Freeform internal notes about the participant (internal only, never
          # exposed to participants).
          notes: nil,
          # Body param: The participant's PayPal email address, used for affiliate payouts.
          paypal_email: nil,
          # Body param
          referral_status: nil,
          # Body param
          referred_by: nil,
          # Body param
          unsubscribed: nil,
          # Body param
          vanity_keys: nil,
          request_options: {}
        )
        end

        # Removes a participant by GrowSurf participant ID or email address.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::ParticipantDeleteResponse)
        end
        def delete(
          # GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # GrowSurf program ID.
          id:,
          request_options: {}
        )
        end

        # Deletes a list of participants from a program in one request. Each entry in
        # `participants` is a GrowSurf participant ID or an email address (mixed lists
        # are allowed). Up to `200` entries per request — chunk larger lists across
        # multiple calls. The response reports a per-row `status` for every submitted
        # entry, so a `200` can include rows that were `NOT_FOUND` or failed. Deletion
        # is permanent and removes the participants' referrals, rewards, commissions,
        # and payout records.
        sig do
          params(
            id: String,
            participants: T::Array[String],
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(
            GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteResponse
          )
        end
        def bulk_delete(
          # GrowSurf program ID.
          id,
          # GrowSurf participant IDs and/or email addresses to delete. Mixed entries are
          # allowed.
          participants:,
          request_options: {}
        )
        end

        # Adds a new participant to the program. If the email already exists, the existing
        # participant is returned.
        sig do
          params(
            id: String,
            email: String,
            fingerprint: String,
            first_name: String,
            ip_address: String,
            last_name: String,
            metadata: T::Hash[Symbol, T.anything],
            mobile_instance_id: String,
            referral_status:
              GrowsurfRuby::Campaign::Create::ReferralStatus::OrSymbol,
            referred_by: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Campaign::CampaignParticipant)
        end
        def add(
          # GrowSurf program ID.
          id,
          email:,
          fingerprint: nil,
          first_name: nil,
          ip_address: nil,
          last_name: nil,
          # Shallow custom metadata object.
          metadata: nil,
          # Optional app-install scoped identifier for native mobile anti-fraud. Recommended
          # for mobile participant creation and mobile participant token flows. The official
          # mobile SDKs generate this as a lowercase UUID.
          mobile_instance_id: nil,
          # The referral credit status; only meaningful when `referred_by` resolves to a
          # referrer. When omitted it is derived from the program's referral trigger
          # (`CREDIT_AWARDED`, `CREDIT_PENDING`, or `CREDIT_EXPIRED`); left unset when no
          # referrer resolves.
          referral_status: nil,
          # Referrer participant ID or email address.
          referred_by: nil,
          request_options: {}
        )
        end

        # Retrieves a paged list of commissions earned by a participant.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            limit: Integer,
            next_id: String,
            status:
              GrowsurfRuby::Campaign::ParticipantListCommissionsParams::Status::OrSymbol,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::ParticipantCommissionList)
        end
        def list_commissions(
          # Path param: GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # Path param: GrowSurf program ID.
          id:,
          # Query param: Number of results to return. Maximum 100.
          limit: nil,
          # Query param: ID to start the next paged result set with.
          next_id: nil,
          # Query param: Participant commission status.
          status: nil,
          request_options: {}
        )
        end

        # Retrieves a paged list of payouts that belong to a participant.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            limit: Integer,
            next_id: String,
            status:
              GrowsurfRuby::Campaign::ParticipantListPayoutsParams::Status::OrSymbol,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::ParticipantPayoutList)
        end
        def list_payouts(
          # Path param: GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # Path param: GrowSurf program ID.
          id:,
          # Query param: Number of results to return. Maximum 100.
          limit: nil,
          # Query param: ID to start the next paged result set with.
          next_id: nil,
          # Query param: Participant payout status.
          status: nil,
          request_options: {}
        )
        end

        # Retrieves referrals and email invites made by a participant.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            desc: T::Boolean,
            email: String,
            first_name: String,
            last_name: String,
            limit: Integer,
            next_id: String,
            offset: Integer,
            referral_status: GrowsurfRuby::Campaign::ReferralStatus::OrSymbol,
            sort_by:
              GrowsurfRuby::Campaign::ParticipantListReferralsParams::SortBy::OrSymbol,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::ReferralList)
        end
        def list_referrals(
          # Path param: GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # Path param: GrowSurf program ID.
          id:,
          # Query param: Return results in descending order when true.
          desc: nil,
          # Query param: URL-encoded email value to filter referral results.
          email: nil,
          # Query param: First name value to filter results.
          first_name: nil,
          # Query param: Last name value to filter results.
          last_name: nil,
          # Query param: Number of results to return. Maximum 100.
          limit: nil,
          # Query param: ID to start the next paged result set with.
          next_id: nil,
          # Query param: Offset number used to skip through a result set.
          offset: nil,
          # Query param
          referral_status: nil,
          # Query param: Field used to sort referral results.
          sort_by: nil,
          request_options: {}
        )
        end

        # Retrieves a paged list of rewards earned by a participant.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            limit: Integer,
            next_id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(
            GrowsurfRuby::Models::Campaign::ParticipantListRewardsResponse
          )
        end
        def list_rewards(
          # Path param: GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # Path param: GrowSurf program ID.
          id:,
          # Query param: Number of results to return. Maximum 100.
          limit: nil,
          # Query param: ID to start the next paged result set with.
          next_id: nil,
          request_options: {}
        )
        end

        # Records a sale made by a referred customer and generates affiliate commissions
        # for their referrer when applicable.
        #
        # At least one transaction identifier is required: one of +external_id+,
        # +transaction_id+, +order_id+, +payment_id+, +invoice_id+, +payment_intent_id+,
        # or +charge_id+. +customer_id+ and +subscription_id+ do not count, since they
        # identify the customer or subscription rather than the specific transaction.
        # Without an identifier, resending the same sale creates a duplicate commission
        # and double-pays the referrer; the server rejects such requests with HTTP 400.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            currency: String,
            gross_amount: Integer,
            amount_cash_net: Integer,
            amount_paid: Integer,
            charge_id: String,
            customer_id: String,
            description: String,
            external_id: String,
            invoice_id: String,
            invoice_subtotal_excluding_tax: Integer,
            invoice_total: Integer,
            invoice_total_excluding_tax: Integer,
            net_amount: Integer,
            order_id: String,
            paid_at: Integer,
            payment_id: String,
            payment_intent_id: String,
            subscription_id: String,
            tax_amount: Integer,
            total_tax_amount: Integer,
            total_tax_amounts: T::Array[T::Hash[Symbol, T.anything]],
            total_taxes: T::Array[T::Hash[Symbol, T.anything]],
            transaction_id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(
            GrowsurfRuby::Models::Campaign::ParticipantRecordTransactionResponse::Variants
          )
        end
        def record_transaction(
          # Path param: GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # Path param: GrowSurf program ID.
          id:,
          # Body param
          currency:,
          # Body param
          gross_amount:,
          # Body param
          amount_cash_net: nil,
          # Body param
          amount_paid: nil,
          # Body param
          charge_id: nil,
          # Body param
          customer_id: nil,
          # Body param
          description: nil,
          # Body param
          external_id: nil,
          # Body param
          invoice_id: nil,
          # Body param
          invoice_subtotal_excluding_tax: nil,
          # Body param
          invoice_total: nil,
          # Body param
          invoice_total_excluding_tax: nil,
          # Body param
          net_amount: nil,
          # Body param
          order_id: nil,
          # Body param
          paid_at: nil,
          # Body param
          payment_id: nil,
          # Body param
          payment_intent_id: nil,
          # Body param
          subscription_id: nil,
          # Body param
          tax_amount: nil,
          # Body param
          total_tax_amount: nil,
          # Body param
          total_tax_amounts: nil,
          # Body param
          total_taxes: nil,
          # Body param
          transaction_id: nil,
          request_options: {}
        )
        end

        # Records an amendment (refund, partial refund, refund cancellation, or
        # chargeback) against a previously recorded transaction and reverses or adjusts
        # the referrer's commission.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            amendment_type:
              GrowsurfRuby::Campaign::ParticipantRefundTransactionParams::AmendmentType::OrSymbol,
            amount: Integer,
            amount_refunded: Integer,
            charge_id: String,
            currency: String,
            description: String,
            external_id: String,
            invoice_id: String,
            order_id: String,
            payment_id: String,
            payment_intent_id: String,
            refund_amount: Integer,
            refund_id: String,
            refund_status: String,
            transaction_id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(
            GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse
          )
        end
        def refund_transaction(
          # Path param: GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # Path param: GrowSurf program ID.
          id:,
          # Body param
          amendment_type: nil,
          # Body param
          amount: nil,
          # Body param
          amount_refunded: nil,
          # Body param
          charge_id: nil,
          # Body param
          currency: nil,
          # Body param
          description: nil,
          # Body param
          external_id: nil,
          # Body param
          invoice_id: nil,
          # Body param
          order_id: nil,
          # Body param
          payment_id: nil,
          # Body param
          payment_intent_id: nil,
          # Body param
          refund_amount: nil,
          # Body param
          refund_id: nil,
          # Body param
          refund_status: nil,
          # Body param
          transaction_id: nil,
          request_options: {}
        )
        end

        # Sends email invites on behalf of a participant to a list of email addresses.
        # Sending invites via the API requires a verified custom email domain on the
        # program; the request fails until one is verified.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            email_addresses: T::Array[String],
            message_text: String,
            subject_text: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(
            GrowsurfRuby::Models::Campaign::ParticipantSendInvitesResponse
          )
        end
        def send_invites(
          # Path param: GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # Path param: GrowSurf program ID.
          id:,
          # Body param
          email_addresses:,
          # Body param
          message_text:,
          # Body param
          subject_text:,
          request_options: {}
        )
        end

        # Triggers referral credit for an existing referred participant by GrowSurf
        # participant ID or email address.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            delay_in_days: Integer,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(
            GrowsurfRuby::Models::Campaign::ParticipantTriggerReferralResponse
          )
        end
        def trigger_referral(
          # Path param: GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # Path param: GrowSurf program ID.
          id:,
          # Body param: Number of whole days to hold referral credit before it is awarded.
          # Useful for honoring a refund window before crediting a referrer. Omit this field
          # to award credit immediately. The credit is awarded automatically once the delay
          # elapses, and can be cancelled before then with the Cancel delayed referral
          # trigger request.
          delay_in_days: nil,
          request_options: {}
        )
        end

        # Cancels a pending delayed referral trigger for an existing referred participant
        # by GrowSurf participant ID or email address.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(
            GrowsurfRuby::Models::Campaign::ParticipantCancelDelayedReferralResponse
          )
        end
        def cancel_delayed_referral(
          # GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # GrowSurf program ID.
          id:,
          request_options: {}
        )
        end

        # Sends an email to a participant. Provide EITHER `email_type` to trigger one of the
        # program's configured email templates, OR `subject` + `body` for a free-form email.
        # Free-form emails are sent with the same compliance handling (company name,
        # postal address, and an unsubscribe link are added automatically, and unsubscribed
        # participants are suppressed). Sending requires the account to be verified by the
        # GrowSurf team. Requires a verified custom email domain on the program (set up
        # in Campaign Editor > 3. Emails > Email Settings). Returns `400` until one is
        # verified.
        # The email is accepted for delivery.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            body: String,
            email_type: String,
            preheader: String,
            subject: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::ParticipantEmailResponse)
        end
        def email(
          # Path param: GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # Path param: GrowSurf program ID.
          id:,
          # Body param: HTML body for a free-form email. You can personalize it with
          # dynamic text, inserting `{{...}}` tokens like `{{firstName}}` or `{{shareUrl}}`.
          # See [Guide to using dynamic text in GrowSurf emails](https://support.growsurf.com/article/213-guide-to-using-dynamic-text-in-growsurf-emails).
          body: nil,
          # Body param: The program email template to send (template mode). Send the
          # camelCase key. The valid types depend on the program type; `isEnabled` only
          # controls automatic sends. Referral programs: `welcomeNonReferred`,
          # `referralLinkViewedFirstTime`, `referralLinkUsed`, `referredSignup`,
          # `welcomeReferred`, `goalAchieved`, `campaignEndedWinners`,
          # `campaignEndedNonWinners`, `progressUpdateMonthly`. Affiliate programs:
          # `welcomeNonReferred`, `referralLinkViewedFirstTime`, `referredSignup`,
          # `commissionGenerated`, `commissionAdjusted`, `payoutPending`,
          # `payoutSentSuccess`, `progressUpdateMonthly`. System/transactional types (login
          # link, PayPal confirmation, tax) and the invite email cannot be sent.
          email_type: nil,
          # Body param: Optional preheader text for a free-form email.
          preheader: nil,
          # Body param: Subject line for a free-form email. Supports dynamic text
          # (`{{...}}` tokens), the same as the body.
          subject: nil,
          request_options: {}
        )
        end

        # Returns a participant's activity logs, most recent first (offset/limit paginated).
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            limit: Integer,
            offset: Integer,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(
            GrowsurfRuby::Models::Campaign::ParticipantActivityLogsResponse
          )
        end
        def list_activity_logs(
          # Path param: GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # Path param: GrowSurf program ID.
          id:,
          # Query param: Number of logs to return (1–100, default 20).
          limit: nil,
          # Query param: Number of logs to skip.
          offset: nil,
          request_options: {}
        )
        end

        # Retrieves analytics for a single participant — all-time engagement counters,
        # leaderboard ranks, and per-channel share counts (plus affiliate money metrics for
        # affiliate programs). Useful for segmenting and re-engaging participants.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            days: Integer,
            end_date: Integer,
            include:
              GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Include::OrSymbol,
            interval:
              GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams::Interval::OrSymbol,
            start_date: Integer,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(
            GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse
          )
        end
        def retrieve_analytics(
          # GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # GrowSurf program ID.
          id:,
          # Last number of days to retrieve analytics for. Defaults to 365. Maximum 1825.
          days: nil,
          # End date of the analytics timeframe as a Unix timestamp in milliseconds.
          # Required if `days` is not set.
          end_date: nil,
          # Set to `series` to also return this participant's own activity per period.
          include: nil,
          # Bucket size for the `series` (only used with `include=series`). Defaults to `day`.
          interval: nil,
          # Start date of the analytics timeframe as a Unix timestamp in milliseconds.
          # Required if `days` is not set.
          start_date: nil,
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
