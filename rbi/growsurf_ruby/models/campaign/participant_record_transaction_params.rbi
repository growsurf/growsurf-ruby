# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantRecordTransactionParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::ParticipantRecordTransactionParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :participant_id_or_email

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(Integer) }
        attr_accessor :gross_amount

        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_cash_net

        sig { params(amount_cash_net: Integer).void }
        attr_writer :amount_cash_net

        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_paid

        sig { params(amount_paid: Integer).void }
        attr_writer :amount_paid

        sig { returns(T.nilable(String)) }
        attr_reader :charge_id

        sig { params(charge_id: String).void }
        attr_writer :charge_id

        sig { returns(T.nilable(String)) }
        attr_reader :customer_id

        sig { params(customer_id: String).void }
        attr_writer :customer_id

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

        sig { returns(T.nilable(Integer)) }
        attr_reader :invoice_subtotal_excluding_tax

        sig { params(invoice_subtotal_excluding_tax: Integer).void }
        attr_writer :invoice_subtotal_excluding_tax

        sig { returns(T.nilable(Integer)) }
        attr_reader :invoice_total

        sig { params(invoice_total: Integer).void }
        attr_writer :invoice_total

        sig { returns(T.nilable(Integer)) }
        attr_reader :invoice_total_excluding_tax

        sig { params(invoice_total_excluding_tax: Integer).void }
        attr_writer :invoice_total_excluding_tax

        sig { returns(T.nilable(Integer)) }
        attr_reader :net_amount

        sig { params(net_amount: Integer).void }
        attr_writer :net_amount

        sig { returns(T.nilable(String)) }
        attr_reader :order_id

        sig { params(order_id: String).void }
        attr_writer :order_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :paid_at

        sig { params(paid_at: Integer).void }
        attr_writer :paid_at

        sig { returns(T.nilable(String)) }
        attr_reader :payment_id

        sig { params(payment_id: String).void }
        attr_writer :payment_id

        sig { returns(T.nilable(String)) }
        attr_reader :payment_intent_id

        sig { params(payment_intent_id: String).void }
        attr_writer :payment_intent_id

        sig { returns(T.nilable(String)) }
        attr_reader :subscription_id

        sig { params(subscription_id: String).void }
        attr_writer :subscription_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :tax_amount

        sig { params(tax_amount: Integer).void }
        attr_writer :tax_amount

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_tax_amount

        sig { params(total_tax_amount: Integer).void }
        attr_writer :total_tax_amount

        sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
        attr_reader :total_tax_amounts

        sig do
          params(total_tax_amounts: T::Array[T::Hash[Symbol, T.anything]]).void
        end
        attr_writer :total_tax_amounts

        sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
        attr_reader :total_taxes

        sig { params(total_taxes: T::Array[T::Hash[Symbol, T.anything]]).void }
        attr_writer :total_taxes

        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id

        sig { params(transaction_id: String).void }
        attr_writer :transaction_id

        sig do
          params(
            id: String,
            participant_id_or_email: String,
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
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          participant_id_or_email:,
          currency:,
          gross_amount:,
          amount_cash_net: nil,
          amount_paid: nil,
          charge_id: nil,
          customer_id: nil,
          description: nil,
          external_id: nil,
          invoice_id: nil,
          invoice_subtotal_excluding_tax: nil,
          invoice_total: nil,
          invoice_total_excluding_tax: nil,
          net_amount: nil,
          order_id: nil,
          paid_at: nil,
          payment_id: nil,
          payment_intent_id: nil,
          subscription_id: nil,
          tax_amount: nil,
          total_tax_amount: nil,
          total_tax_amounts: nil,
          total_taxes: nil,
          transaction_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              participant_id_or_email: String,
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
              request_options: GrowsurfRuby::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
