# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantRefundTransactionParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::ParticipantRefundTransactionParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :participant_id_or_email

        sig do
          returns(
            T.nilable(
              GrowsurfRuby::Campaign::ParticipantRefundTransactionParams::AmendmentType::OrSymbol
            )
          )
        end
        attr_reader :amendment_type

        sig do
          params(
            amendment_type:
              GrowsurfRuby::Campaign::ParticipantRefundTransactionParams::AmendmentType::OrSymbol
          ).void
        end
        attr_writer :amendment_type

        sig { returns(T.nilable(Integer)) }
        attr_reader :amount

        sig { params(amount: Integer).void }
        attr_writer :amount

        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_refunded

        sig { params(amount_refunded: Integer).void }
        attr_writer :amount_refunded

        sig { returns(T.nilable(String)) }
        attr_reader :charge_id

        sig { params(charge_id: String).void }
        attr_writer :charge_id

        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :external_id

        sig { params(external_id: String).void }
        attr_writer :external_id

        sig { returns(T.nilable(String)) }
        attr_reader :invoice_id

        sig { params(invoice_id: String).void }
        attr_writer :invoice_id

        sig { returns(T.nilable(String)) }
        attr_reader :order_id

        sig { params(order_id: String).void }
        attr_writer :order_id

        sig { returns(T.nilable(String)) }
        attr_reader :payment_id

        sig { params(payment_id: String).void }
        attr_writer :payment_id

        sig { returns(T.nilable(String)) }
        attr_reader :payment_intent_id

        sig { params(payment_intent_id: String).void }
        attr_writer :payment_intent_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :refund_amount

        sig { params(refund_amount: Integer).void }
        attr_writer :refund_amount

        sig { returns(T.nilable(String)) }
        attr_reader :refund_id

        sig { params(refund_id: String).void }
        attr_writer :refund_id

        sig { returns(T.nilable(String)) }
        attr_reader :refund_status

        sig { params(refund_status: String).void }
        attr_writer :refund_status

        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id

        sig { params(transaction_id: String).void }
        attr_writer :transaction_id

        sig do
          params(
            id: String,
            participant_id_or_email: String,
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
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          participant_id_or_email:,
          amendment_type: nil,
          amount: nil,
          amount_refunded: nil,
          charge_id: nil,
          currency: nil,
          description: nil,
          external_id: nil,
          invoice_id: nil,
          order_id: nil,
          payment_id: nil,
          payment_intent_id: nil,
          refund_amount: nil,
          refund_id: nil,
          refund_status: nil,
          transaction_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              participant_id_or_email: String,
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
              request_options: GrowsurfRuby::RequestOptions
            }
          )
        end
        def to_hash
        end

        module AmendmentType
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                GrowsurfRuby::Campaign::ParticipantRefundTransactionParams::AmendmentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REFUND =
            T.let(
              :REFUND,
              GrowsurfRuby::Campaign::ParticipantRefundTransactionParams::AmendmentType::TaggedSymbol
            )
          CHARGEBACK =
            T.let(
              :CHARGEBACK,
              GrowsurfRuby::Campaign::ParticipantRefundTransactionParams::AmendmentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Campaign::ParticipantRefundTransactionParams::AmendmentType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
