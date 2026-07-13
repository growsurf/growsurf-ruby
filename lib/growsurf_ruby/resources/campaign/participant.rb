# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      class Participant
        # Retrieves a single participant by GrowSurf participant ID or email address.
        #
        # @overload retrieve(participant_id_or_email, id:, request_options: {})
        #
        # @param participant_id_or_email [String] GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::CampaignParticipant]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantRetrieveParams
        def retrieve(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantRetrieveParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["campaign/%1$s/participant/%2$s", id, participant_id_or_email],
            model: GrowsurfRuby::Campaign::CampaignParticipant,
            options: options
          )
        end

        # Updates a participant by GrowSurf participant ID or email address.
        #
        # @overload update(participant_id_or_email, id:, email: nil, first_name: nil, last_name: nil, metadata: nil, notes: nil, paypal_email: nil, referral_status: nil, referred_by: nil, unsubscribed: nil, vanity_keys: nil, request_options: {})
        #
        # @param participant_id_or_email [String] Path param: GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param email [String] Body param
        #
        # @param first_name [String] Body param
        #
        # @param last_name [String] Body param
        #
        # @param metadata [Hash{Symbol=>Object}] Body param: Shallow custom metadata object.
        #
        # @param notes [String] Body param: Freeform internal notes about the participant (internal only, never ex
        #
        # @param paypal_email [String] Body param: The participant's PayPal email address, used for affiliate payouts.
        #
        # @param referral_status [Symbol, GrowsurfRuby::Models::Campaign::ParticipantUpdateParams::ReferralStatus] Body param
        #
        # @param referred_by [String] Body param
        #
        # @param unsubscribed [Boolean] Body param
        #
        # @param vanity_keys [Array<String>] Body param
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::CampaignParticipant]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantUpdateParams
        def update(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantUpdateParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["campaign/%1$s/participant/%2$s", id, participant_id_or_email],
            body: parsed,
            model: GrowsurfRuby::Campaign::CampaignParticipant,
            options: options
          )
        end

        # Removes a participant by GrowSurf participant ID or email address.
        #
        # @overload delete(participant_id_or_email, id:, request_options: {})
        #
        # @param participant_id_or_email [String] GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::ParticipantDeleteResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantDeleteParams
        def delete(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantDeleteParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["campaign/%1$s/participant/%2$s", id, participant_id_or_email],
            model: GrowsurfRuby::Models::Campaign::ParticipantDeleteResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteParams} for more details.
        #
        # Deletes a list of participants from a program in one request. Each entry in
        # `participants` is a GrowSurf participant ID or an email address (mixed lists
        # are allowed). Up to `200` entries per request — chunk larger lists across
        # multiple calls. The response reports a per-row `status` for every submitted
        # entry, so a `200` can include rows that were `NOT_FOUND` or failed. Deletion
        # is permanent and removes the participants' referrals, rewards, commissions,
        # and payout records.
        #
        # @overload bulk_delete(id, participants:, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param participants [Array<String>] GrowSurf participant IDs and/or email addresses to delete. Mixed entries are al
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteParams
        def bulk_delete(id, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantBulkDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["campaign/%1$s/participants/bulk-delete", id],
            body: parsed,
            model: GrowsurfRuby::Models::Campaign::ParticipantBulkDeleteResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {GrowsurfRuby::Models::Campaign::ParticipantAddParams} for more details.
        #
        # Adds a new participant to the program. If the email already exists, the existing
        # participant is returned.
        #
        # @overload add(id, email:, fingerprint: nil, first_name: nil, ip_address: nil, last_name: nil, metadata: nil, mobile_instance_id: nil, referral_status: nil, referred_by: nil, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param email [String]
        #
        # @param fingerprint [String]
        #
        # @param first_name [String]
        #
        # @param ip_address [String]
        #
        # @param last_name [String]
        #
        # @param metadata [Hash{Symbol=>Object}] Shallow custom metadata object.
        #
        # @param mobile_instance_id [String] Optional app-install scoped identifier for native mobile anti-fraud. Recommended
        #
        # @param referral_status [Symbol, GrowsurfRuby::Models::Campaign::Create::ReferralStatus] The referral credit status; only meaningful when `referred_by` resolves to a ref
        #
        # @param referred_by [String] Referrer participant ID or email address.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::CampaignParticipant]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantAddParams
        def add(id, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantAddParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["campaign/%1$s/participant", id],
            body: parsed,
            model: GrowsurfRuby::Campaign::CampaignParticipant,
            options: options
          )
        end

        # Retrieves a paged list of commissions earned by a participant.
        #
        # @overload list_commissions(participant_id_or_email, id:, limit: nil, next_id: nil, status: nil, request_options: {})
        #
        # @param participant_id_or_email [String] Path param: GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param limit [Integer] Query param: Number of results to return. Maximum 100.
        #
        # @param next_id [String] Query param: ID to start the next paged result set with.
        #
        # @param status [Symbol, GrowsurfRuby::Models::Campaign::ParticipantListCommissionsParams::Status] Query param: Participant commission status.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::ParticipantCommissionList]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantListCommissionsParams
        def list_commissions(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantListCommissionsParams.dump_request(params)
          query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["campaign/%1$s/participant/%2$s/commissions", id, participant_id_or_email],
            query: query.transform_keys(next_id: "nextId"),
            model: GrowsurfRuby::ParticipantCommissionList,
            options: options
          )
        end

        # Retrieves a paged list of payouts that belong to a participant.
        #
        # @overload list_payouts(participant_id_or_email, id:, limit: nil, next_id: nil, status: nil, request_options: {})
        #
        # @param participant_id_or_email [String] Path param: GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param limit [Integer] Query param: Number of results to return. Maximum 100.
        #
        # @param next_id [String] Query param: ID to start the next paged result set with.
        #
        # @param status [Symbol, GrowsurfRuby::Models::Campaign::ParticipantListPayoutsParams::Status] Query param: Participant payout status.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::ParticipantPayoutList]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantListPayoutsParams
        def list_payouts(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantListPayoutsParams.dump_request(params)
          query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["campaign/%1$s/participant/%2$s/payouts", id, participant_id_or_email],
            query: query.transform_keys(next_id: "nextId"),
            model: GrowsurfRuby::ParticipantPayoutList,
            options: options
          )
        end

        # Retrieves referrals and email invites made by a participant.
        #
        # @overload list_referrals(participant_id_or_email, id:, desc: nil, email: nil, first_name: nil, last_name: nil, limit: nil, next_id: nil, offset: nil, referral_status: nil, sort_by: nil, request_options: {})
        #
        # @param participant_id_or_email [String] Path param: GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param desc [Boolean] Query param: Return results in descending order when true.
        #
        # @param email [String] Query param: URL-encoded email value to filter referral results.
        #
        # @param first_name [String] Query param: First name value to filter results.
        #
        # @param last_name [String] Query param: Last name value to filter results.
        #
        # @param limit [Integer] Query param: Number of results to return. Maximum 100.
        #
        # @param next_id [String] Query param: ID to start the next paged result set with.
        #
        # @param offset [Integer] Query param: Offset number used to skip through a result set.
        #
        # @param referral_status [Symbol, GrowsurfRuby::Models::Campaign::ReferralStatus] Query param
        #
        # @param sort_by [Symbol, GrowsurfRuby::Models::Campaign::ParticipantListReferralsParams::SortBy] Query param: Field used to sort referral results.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::ReferralList]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantListReferralsParams
        def list_referrals(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantListReferralsParams.dump_request(params)
          query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["campaign/%1$s/participant/%2$s/referrals", id, participant_id_or_email],
            query: query.transform_keys(
              first_name: "firstName",
              last_name: "lastName",
              next_id: "nextId",
              referral_status: "referralStatus",
              sort_by: "sortBy"
            ),
            model: GrowsurfRuby::ReferralList,
            options: options
          )
        end

        # Retrieves a paged list of rewards earned by a participant.
        #
        # @overload list_rewards(participant_id_or_email, id:, limit: nil, next_id: nil, request_options: {})
        #
        # @param participant_id_or_email [String] Path param: GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param limit [Integer] Query param: Number of results to return. Maximum 100.
        #
        # @param next_id [String] Query param: ID to start the next paged result set with.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::ParticipantListRewardsResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantListRewardsParams
        def list_rewards(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantListRewardsParams.dump_request(params)
          query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["campaign/%1$s/participant/%2$s/rewards", id, participant_id_or_email],
            query: query.transform_keys(next_id: "nextId"),
            model: GrowsurfRuby::Models::Campaign::ParticipantListRewardsResponse,
            options: options
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
        #
        # @overload record_transaction(participant_id_or_email, id:, currency:, gross_amount:, amount_cash_net: nil, amount_paid: nil, charge_id: nil, customer_id: nil, description: nil, external_id: nil, invoice_id: nil, invoice_subtotal_excluding_tax: nil, invoice_total: nil, invoice_total_excluding_tax: nil, net_amount: nil, order_id: nil, paid_at: nil, payment_id: nil, payment_intent_id: nil, subscription_id: nil, tax_amount: nil, total_tax_amount: nil, total_tax_amounts: nil, total_taxes: nil, transaction_id: nil, request_options: {})
        #
        # @param participant_id_or_email [String] Path param: GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param currency [String] Body param
        #
        # @param gross_amount [Integer] Body param
        #
        # @param amount_cash_net [Integer] Body param
        #
        # @param amount_paid [Integer] Body param
        #
        # @param charge_id [String] Body param
        #
        # @param customer_id [String] Body param
        #
        # @param description [String] Body param
        #
        # @param external_id [String] Body param
        #
        # @param invoice_id [String] Body param
        #
        # @param invoice_subtotal_excluding_tax [Integer] Body param
        #
        # @param invoice_total [Integer] Body param
        #
        # @param invoice_total_excluding_tax [Integer] Body param
        #
        # @param net_amount [Integer] Body param
        #
        # @param order_id [String] Body param
        #
        # @param paid_at [Integer] Body param
        #
        # @param payment_id [String] Body param
        #
        # @param payment_intent_id [String] Body param
        #
        # @param subscription_id [String] Body param
        #
        # @param tax_amount [Integer] Body param
        #
        # @param total_tax_amount [Integer] Body param
        #
        # @param total_tax_amounts [Array<Hash{Symbol=>Object}>] Body param
        #
        # @param total_taxes [Array<Hash{Symbol=>Object}>] Body param
        #
        # @param transaction_id [String] Body param
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::ParticipantRecordTransactionResponse::UnionMember0, GrowsurfRuby::Models::Campaign::ParticipantRecordTransactionResponse::UnionMember1]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantRecordTransactionParams
        def record_transaction(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantRecordTransactionParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["campaign/%1$s/participant/%2$s/transaction", id, participant_id_or_email],
            body: parsed,
            model: GrowsurfRuby::Models::Campaign::ParticipantRecordTransactionResponse,
            options: options
          )
        end

        # Records an amendment (refund, partial refund, refund cancellation, or
        # chargeback) against a previously recorded transaction and reverses or adjusts
        # the referrer's commission.
        #
        # @overload refund_transaction(participant_id_or_email, id:, amendment_type: nil, amount: nil, amount_refunded: nil, charge_id: nil, currency: nil, description: nil, external_id: nil, invoice_id: nil, order_id: nil, payment_id: nil, payment_intent_id: nil, refund_amount: nil, refund_id: nil, refund_status: nil, transaction_id: nil, request_options: {})
        #
        # @param participant_id_or_email [String] Path param: GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param amendment_type [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionParams::AmendmentType] Body param
        #
        # @param amount [Integer] Body param
        #
        # @param amount_refunded [Integer] Body param
        #
        # @param charge_id [String] Body param
        #
        # @param currency [String] Body param
        #
        # @param description [String] Body param
        #
        # @param external_id [String] Body param
        #
        # @param invoice_id [String] Body param
        #
        # @param order_id [String] Body param
        #
        # @param payment_id [String] Body param
        #
        # @param payment_intent_id [String] Body param
        #
        # @param refund_amount [Integer] Body param
        #
        # @param refund_id [String] Body param
        #
        # @param refund_status [String] Body param
        #
        # @param transaction_id [String] Body param
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionParams
        def refund_transaction(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantRefundTransactionParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["campaign/%1$s/participant/%2$s/transaction/refund", id, participant_id_or_email],
            body: parsed,
            model: GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse,
            options: options
          )
        end

        # Sends email invites on behalf of a participant to a list of email addresses.
        # Sending invites via the API requires a verified custom email domain on the
        # program; the request fails until one is verified.
        #
        # @overload send_invites(participant_id_or_email, id:, email_addresses:, message_text:, subject_text:, request_options: {})
        #
        # @param participant_id_or_email [String] Path param: GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param email_addresses [Array<String>] Body param
        #
        # @param message_text [String] Body param
        #
        # @param subject_text [String] Body param
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::ParticipantSendInvitesResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantSendInvitesParams
        def send_invites(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantSendInvitesParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["campaign/%1$s/participant/%2$s/invites", id, participant_id_or_email],
            body: parsed,
            model: GrowsurfRuby::Models::Campaign::ParticipantSendInvitesResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {GrowsurfRuby::Models::Campaign::ParticipantTriggerReferralParams} for more
        # details.
        #
        # Triggers referral credit for an existing referred participant by GrowSurf
        # participant ID or email address.
        #
        # @overload trigger_referral(participant_id_or_email, id:, delay_in_days: nil, request_options: {})
        #
        # @param participant_id_or_email [String] Path param: GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param delay_in_days [Integer] Body param: Number of whole days to hold referral credit before it is awarded. U
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::ParticipantTriggerReferralResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantTriggerReferralParams
        def trigger_referral(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantTriggerReferralParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["campaign/%1$s/participant/%2$s/ref", id, participant_id_or_email],
            body: parsed,
            model: GrowsurfRuby::Models::Campaign::ParticipantTriggerReferralResponse,
            options: options
          )
        end

        # Cancels a pending delayed referral trigger for an existing referred participant
        # by GrowSurf participant ID or email address.
        #
        # @overload cancel_delayed_referral(participant_id_or_email, id:, request_options: {})
        #
        # @param participant_id_or_email [String] GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::ParticipantCancelDelayedReferralResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantCancelDelayedReferralParams
        def cancel_delayed_referral(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantCancelDelayedReferralParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["campaign/%1$s/participant/%2$s/ref", id, participant_id_or_email],
            model: GrowsurfRuby::Models::Campaign::ParticipantCancelDelayedReferralResponse,
            options: options
          )
        end

        # Sends an email to a participant. Provide EITHER `email_type` to trigger one of the
        # program's configured email templates, OR `subject` + `body` for a free-form email.
        # Free-form emails are sent with the same compliance handling (company name,
        # postal address, and an unsubscribe link are added automatically, and unsubscribed
        # participants are suppressed). Sending requires the team to be verified by
        # GrowSurf. Requires a verified custom email domain on the program (set up
        # in Campaign Editor > 3. Emails > Email Settings). Returns `400` until one is
        # verified.
        # The email is accepted for delivery.
        #
        # @overload email(participant_id_or_email, id:, body: nil, email_type: nil, preheader: nil, subject: nil, request_options: {})
        #
        # @param participant_id_or_email [String] Path param: GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param body [String] Body param: HTML body for a free-form email. You can personalize it with dynamic text, inserting `{{...}}` tokens like `{{firstName}}` or `{{shareUrl}}`. See [Guide to using dynamic text in GrowSurf emails](https://support.growsurf.com/article/213-guide-to-using-dynamic-text-in-growsurf-emails).
        #
        # @param email_type [String] Body param: The program email template to send (template mode). Send the camelCase
        #
        # @param preheader [String] Body param: Optional preheader text for a free-form email.
        #
        # @param subject [String] Body param: Subject line for a free-form email. Supports dynamic text (`{{...}}` tokens), the same as the body.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::ParticipantEmailResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantEmailParams
        def email(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantEmailParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["campaign/%1$s/participant/%2$s/email", id, participant_id_or_email],
            body: parsed,
            model: GrowsurfRuby::Models::Campaign::ParticipantEmailResponse,
            options: options
          )
        end

        # Returns a participant's activity logs, most recent first (offset/limit paginated).
        #
        # @overload list_activity_logs(participant_id_or_email, id:, limit: nil, offset: nil, request_options: {})
        #
        # @param participant_id_or_email [String] Path param: GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] Path param: GrowSurf program ID.
        #
        # @param limit [Integer] Query param: Number of logs to return (1–100, default 20).
        #
        # @param offset [Integer] Query param: Number of logs to skip.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::ParticipantActivityLogsResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantListActivityLogsParams
        def list_activity_logs(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantListActivityLogsParams.dump_request(params)
          query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["campaign/%1$s/participant/%2$s/activity-logs", id, participant_id_or_email],
            query: query,
            model: GrowsurfRuby::Models::Campaign::ParticipantActivityLogsResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {GrowsurfRuby::Models::Campaign::ParticipantRetrieveAnalyticsParams} for more
        # details.
        #
        # Retrieves analytics for a single participant — all-time engagement counters,
        # leaderboard ranks, and per-channel share counts (plus affiliate money metrics for
        # affiliate programs). Useful for segmenting and re-engaging participants.
        #
        # @overload retrieve_analytics(participant_id_or_email, id:, days: nil, end_date: nil, include: nil, interval: nil, start_date: nil, request_options: {})
        #
        # @param participant_id_or_email [String] GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param days [Integer] Last number of days to retrieve analytics for. Defaults to 365. Maximum 1825.
        #
        # @param end_date [Integer] End date of the analytics timeframe as a Unix timestamp in milliseconds. Require
        #
        # @param include [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRetrieveAnalyticsParams::Include] Set to `series` to also return this participant's own activity per period.
        #
        # @param interval [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRetrieveAnalyticsParams::Interval] Bucket size for the `series` (only used with `include=series`). Defaults to `day`.
        #
        # @param start_date [Integer] Start date of the analytics timeframe as a Unix timestamp in milliseconds. Requi
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::ParticipantRetrieveAnalyticsParams
        def retrieve_analytics(participant_id_or_email, params)
          parsed, options = GrowsurfRuby::Campaign::ParticipantRetrieveAnalyticsParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          query = GrowsurfRuby::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["campaign/%1$s/participant/%2$s/analytics", id, participant_id_or_email],
            query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
            model: GrowsurfRuby::Models::Campaign::ParticipantAnalyticsResponse,
            options: options
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
