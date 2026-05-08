# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      # @see Growsurf::Resources::Campaign::Participant#record_transaction
      class ParticipantRecordTransactionParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute participant_id_or_email
        #
        #   @return [String]
        required :participant_id_or_email, String

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute gross_amount
        #
        #   @return [Integer]
        required :gross_amount, Integer, api_name: :grossAmount

        # @!attribute amount_cash_net
        #
        #   @return [Integer, nil]
        optional :amount_cash_net, Integer, api_name: :amountCashNet

        # @!attribute amount_paid
        #
        #   @return [Integer, nil]
        optional :amount_paid, Integer, api_name: :amountPaid

        # @!attribute charge_id
        #
        #   @return [String, nil]
        optional :charge_id, String, api_name: :chargeId

        # @!attribute customer_id
        #
        #   @return [String, nil]
        optional :customer_id, String, api_name: :customerId

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute external_id
        #
        #   @return [String, nil]
        optional :external_id, String, api_name: :externalId

        # @!attribute invoice_id
        #
        #   @return [String, nil]
        optional :invoice_id, String, api_name: :invoiceId

        # @!attribute invoice_subtotal_excluding_tax
        #
        #   @return [Integer, nil]
        optional :invoice_subtotal_excluding_tax, Integer, api_name: :invoiceSubtotalExcludingTax

        # @!attribute invoice_total
        #
        #   @return [Integer, nil]
        optional :invoice_total, Integer, api_name: :invoiceTotal

        # @!attribute invoice_total_excluding_tax
        #
        #   @return [Integer, nil]
        optional :invoice_total_excluding_tax, Integer, api_name: :invoiceTotalExcludingTax

        # @!attribute net_amount
        #
        #   @return [Integer, nil]
        optional :net_amount, Integer, api_name: :netAmount

        # @!attribute order_id
        #
        #   @return [String, nil]
        optional :order_id, String, api_name: :orderId

        # @!attribute paid_at
        #
        #   @return [Integer, nil]
        optional :paid_at, Integer, api_name: :paidAt

        # @!attribute payment_id
        #
        #   @return [String, nil]
        optional :payment_id, String, api_name: :paymentId

        # @!attribute payment_intent_id
        #
        #   @return [String, nil]
        optional :payment_intent_id, String, api_name: :paymentIntentId

        # @!attribute subscription_id
        #
        #   @return [String, nil]
        optional :subscription_id, String, api_name: :subscriptionId

        # @!attribute tax_amount
        #
        #   @return [Integer, nil]
        optional :tax_amount, Integer, api_name: :taxAmount

        # @!attribute total_tax_amount
        #
        #   @return [Integer, nil]
        optional :total_tax_amount, Integer, api_name: :totalTaxAmount

        # @!attribute total_tax_amounts
        #
        #   @return [Array<Hash{Symbol=>Object}>, nil]
        optional :total_tax_amounts,
                 Growsurf::Internal::Type::ArrayOf[Growsurf::Internal::Type::HashOf[Growsurf::Internal::Type::Unknown]],
                 api_name: :totalTaxAmounts

        # @!attribute total_taxes
        #
        #   @return [Array<Hash{Symbol=>Object}>, nil]
        optional :total_taxes,
                 Growsurf::Internal::Type::ArrayOf[Growsurf::Internal::Type::HashOf[Growsurf::Internal::Type::Unknown]],
                 api_name: :totalTaxes

        # @!attribute transaction_id
        #
        #   @return [String, nil]
        optional :transaction_id, String, api_name: :transactionId

        # @!method initialize(id:, participant_id_or_email:, currency:, gross_amount:, amount_cash_net: nil, amount_paid: nil, charge_id: nil, customer_id: nil, description: nil, external_id: nil, invoice_id: nil, invoice_subtotal_excluding_tax: nil, invoice_total: nil, invoice_total_excluding_tax: nil, net_amount: nil, order_id: nil, paid_at: nil, payment_id: nil, payment_intent_id: nil, subscription_id: nil, tax_amount: nil, total_tax_amount: nil, total_tax_amounts: nil, total_taxes: nil, transaction_id: nil, request_options: {})
        #   @param id [String]
        #   @param participant_id_or_email [String]
        #   @param currency [String]
        #   @param gross_amount [Integer]
        #   @param amount_cash_net [Integer]
        #   @param amount_paid [Integer]
        #   @param charge_id [String]
        #   @param customer_id [String]
        #   @param description [String]
        #   @param external_id [String]
        #   @param invoice_id [String]
        #   @param invoice_subtotal_excluding_tax [Integer]
        #   @param invoice_total [Integer]
        #   @param invoice_total_excluding_tax [Integer]
        #   @param net_amount [Integer]
        #   @param order_id [String]
        #   @param paid_at [Integer]
        #   @param payment_id [String]
        #   @param payment_intent_id [String]
        #   @param subscription_id [String]
        #   @param tax_amount [Integer]
        #   @param total_tax_amount [Integer]
        #   @param total_tax_amounts [Array<Hash{Symbol=>Object}>]
        #   @param total_taxes [Array<Hash{Symbol=>Object}>]
        #   @param transaction_id [String]
        #   @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
