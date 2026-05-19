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
        # @overload update(participant_id_or_email, id:, email: nil, first_name: nil, last_name: nil, metadata: nil, referral_status: nil, referred_by: nil, unsubscribed: nil, vanity_keys: nil, request_options: {})
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

        # Adds a new participant to the program. If the email already exists, the existing
        # participant is returned.
        #
        # @overload add(id, email:, fingerprint: nil, first_name: nil, ip_address: nil, last_name: nil, metadata: nil, referral_status: nil, referred_by: nil, request_options: {})
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
        # @param referral_status [Symbol, GrowsurfRuby::Models::Campaign::Create::ReferralStatus]
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

        # Sends email invites on behalf of a participant to a list of email addresses.
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

        # Triggers referral credit for an existing referred participant by GrowSurf
        # participant ID or email address.
        #
        # @overload trigger_referral(participant_id_or_email, id:, request_options: {})
        #
        # @param participant_id_or_email [String] GrowSurf participant ID or URL-encoded participant email address.
        #
        # @param id [String] GrowSurf program ID.
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
            model: GrowsurfRuby::Models::Campaign::ParticipantTriggerReferralResponse,
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
