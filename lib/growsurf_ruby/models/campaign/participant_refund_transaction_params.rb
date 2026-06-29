# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#refund_transaction
      class ParticipantRefundTransactionParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute participant_id_or_email
        #
        #   @return [String]
        required :participant_id_or_email, String

        # @!attribute amendment_type
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionParams::AmendmentType, nil]
        optional :amendment_type,
                 enum: -> { GrowsurfRuby::Campaign::ParticipantRefundTransactionParams::AmendmentType },
                 api_name: :amendmentType

        # @!attribute amount
        #
        #   @return [Integer, nil]
        optional :amount, Integer

        # @!attribute amount_refunded
        #
        #   @return [Integer, nil]
        optional :amount_refunded, Integer, api_name: :amountRefunded

        # @!attribute charge_id
        #
        #   @return [String, nil]
        optional :charge_id, String, api_name: :chargeId

        # @!attribute currency
        #
        #   @return [String, nil]
        optional :currency, String

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

        # @!attribute order_id
        #
        #   @return [String, nil]
        optional :order_id, String, api_name: :orderId

        # @!attribute payment_id
        #
        #   @return [String, nil]
        optional :payment_id, String, api_name: :paymentId

        # @!attribute payment_intent_id
        #
        #   @return [String, nil]
        optional :payment_intent_id, String, api_name: :paymentIntentId

        # @!attribute refund_amount
        #
        #   @return [Integer, nil]
        optional :refund_amount, Integer, api_name: :refundAmount

        # @!attribute refund_id
        #
        #   @return [String, nil]
        optional :refund_id, String, api_name: :refundId

        # @!attribute refund_status
        #
        #   @return [String, nil]
        optional :refund_status, String, api_name: :refundStatus

        # @!attribute transaction_id
        #
        #   @return [String, nil]
        optional :transaction_id, String, api_name: :transactionId

        # @!method initialize(id:, participant_id_or_email:, amendment_type: nil, amount: nil, amount_refunded: nil, charge_id: nil, currency: nil, description: nil, external_id: nil, invoice_id: nil, order_id: nil, payment_id: nil, payment_intent_id: nil, refund_amount: nil, refund_id: nil, refund_status: nil, transaction_id: nil, request_options: {})
        #   @param id [String]
        #   @param participant_id_or_email [String]
        #   @param amendment_type [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionParams::AmendmentType]
        #   @param amount [Integer]
        #   @param amount_refunded [Integer]
        #   @param charge_id [String]
        #   @param currency [String]
        #   @param description [String]
        #   @param external_id [String]
        #   @param invoice_id [String]
        #   @param order_id [String]
        #   @param payment_id [String]
        #   @param payment_intent_id [String]
        #   @param refund_amount [Integer]
        #   @param refund_id [String]
        #   @param refund_status [String]
        #   @param transaction_id [String]
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

        module AmendmentType
          extend GrowsurfRuby::Internal::Type::Enum

          REFUND = :REFUND
          CHARGEBACK = :CHARGEBACK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
