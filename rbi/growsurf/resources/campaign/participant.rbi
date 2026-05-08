# typed: strong

module Growsurf
  module Resources
    class Campaign
      class Participant
        # Retrieves a single participant by GrowSurf participant ID or email address.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(Growsurf::Campaign::CampaignParticipant)
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
            referral_status:
              Growsurf::Campaign::ParticipantUpdateParams::ReferralStatus::OrSymbol,
            referred_by: String,
            unsubscribed: T::Boolean,
            vanity_keys: T::Array[String],
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(Growsurf::Campaign::CampaignParticipant)
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
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(Growsurf::Models::Campaign::ParticipantDeleteResponse)
        end
        def delete(
          # GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # GrowSurf program ID.
          id:,
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
            referral_status:
              Growsurf::Campaign::ParticipantAddParams::ReferralStatus::OrSymbol,
            referred_by: String,
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(Growsurf::Campaign::CampaignParticipant)
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
              Growsurf::Campaign::ParticipantListCommissionsParams::Status::OrSymbol,
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(Growsurf::ParticipantCommissionList)
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
              Growsurf::Campaign::ParticipantListPayoutsParams::Status::OrSymbol,
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(Growsurf::ParticipantPayoutList)
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
            referral_status: Growsurf::Campaign::ReferralStatus::OrSymbol,
            sort_by:
              Growsurf::Campaign::ParticipantListReferralsParams::SortBy::OrSymbol,
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(Growsurf::ReferralList)
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
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(Growsurf::Models::Campaign::ParticipantListRewardsResponse)
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
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(
            Growsurf::Models::Campaign::ParticipantRecordTransactionResponse::Variants
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

        # Sends email invites on behalf of a participant to a list of email addresses.
        sig do
          params(
            participant_id_or_email: String,
            id: String,
            email_addresses: T::Array[String],
            message_text: String,
            subject_text: String,
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(Growsurf::Models::Campaign::ParticipantSendInvitesResponse)
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
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(
            Growsurf::Models::Campaign::ParticipantTriggerReferralResponse
          )
        end
        def trigger_referral(
          # GrowSurf participant ID or URL-encoded participant email address.
          participant_id_or_email,
          # GrowSurf program ID.
          id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Growsurf::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
