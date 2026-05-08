# typed: strong

module Growsurf
  module Models
    class ParticipantPayoutList < Growsurf::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Growsurf::ParticipantPayoutList, Growsurf::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :limit

      sig { returns(T.nilable(String)) }
      attr_accessor :next_id

      sig { returns(T::Array[Growsurf::ParticipantPayoutList::Payout]) }
      attr_accessor :payouts

      sig do
        params(
          limit: Integer,
          next_id: T.nilable(String),
          payouts: T::Array[Growsurf::ParticipantPayoutList::Payout::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(limit:, next_id:, payouts:)
      end

      sig do
        override.returns(
          {
            limit: Integer,
            next_id: T.nilable(String),
            payouts: T::Array[Growsurf::ParticipantPayoutList::Payout]
          }
        )
      end
      def to_hash
      end

      class Payout < Growsurf::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Growsurf::ParticipantPayoutList::Payout,
              Growsurf::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(T::Array[String]) }
        attr_accessor :commission_ids

        sig { returns(Integer) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :currency_iso

        sig { returns(String) }
        attr_accessor :participant_id

        sig do
          returns(Growsurf::ParticipantPayoutList::Payout::Status::TaggedSymbol)
        end
        attr_accessor :status

        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount_in_campaign_currency

        sig { returns(T.nilable(String)) }
        attr_accessor :campaign_currency_iso

        sig { returns(T.nilable(Float)) }
        attr_accessor :exchange_rate

        sig { returns(T.nilable(Integer)) }
        attr_reader :exchange_rate_at

        sig { params(exchange_rate_at: Integer).void }
        attr_writer :exchange_rate_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :failed_at

        sig { params(failed_at: Integer).void }
        attr_writer :failed_at

        sig { returns(T.nilable(String)) }
        attr_accessor :fx_error

        sig { returns(T.nilable(Integer)) }
        attr_reader :issued_at

        sig { params(issued_at: Integer).void }
        attr_writer :issued_at

        sig { returns(T.nilable(String)) }
        attr_accessor :provider

        sig do
          params(
            id: String,
            amount: Integer,
            commission_ids: T::Array[String],
            created_at: Integer,
            currency_iso: String,
            participant_id: String,
            status: Growsurf::ParticipantPayoutList::Payout::Status::OrSymbol,
            amount_in_campaign_currency: T.nilable(Integer),
            campaign_currency_iso: T.nilable(String),
            exchange_rate: T.nilable(Float),
            exchange_rate_at: Integer,
            failed_at: Integer,
            fx_error: T.nilable(String),
            issued_at: Integer,
            provider: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          amount:,
          commission_ids:,
          created_at:,
          currency_iso:,
          participant_id:,
          status:,
          amount_in_campaign_currency: nil,
          campaign_currency_iso: nil,
          exchange_rate: nil,
          exchange_rate_at: nil,
          failed_at: nil,
          fx_error: nil,
          issued_at: nil,
          provider: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Integer,
              commission_ids: T::Array[String],
              created_at: Integer,
              currency_iso: String,
              participant_id: String,
              status:
                Growsurf::ParticipantPayoutList::Payout::Status::TaggedSymbol,
              amount_in_campaign_currency: T.nilable(Integer),
              campaign_currency_iso: T.nilable(String),
              exchange_rate: T.nilable(Float),
              exchange_rate_at: Integer,
              failed_at: Integer,
              fx_error: T.nilable(String),
              issued_at: Integer,
              provider: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module Status
          extend Growsurf::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Growsurf::ParticipantPayoutList::Payout::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UPCOMING =
            T.let(
              :UPCOMING,
              Growsurf::ParticipantPayoutList::Payout::Status::TaggedSymbol
            )
          QUEUED =
            T.let(
              :QUEUED,
              Growsurf::ParticipantPayoutList::Payout::Status::TaggedSymbol
            )
          ISSUED =
            T.let(
              :ISSUED,
              Growsurf::ParticipantPayoutList::Payout::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              Growsurf::ParticipantPayoutList::Payout::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Growsurf::ParticipantPayoutList::Payout::Status::TaggedSymbol
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
