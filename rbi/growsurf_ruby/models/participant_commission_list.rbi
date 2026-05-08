# typed: strong

module GrowsurfRuby
  module Models
    class ParticipantCommissionList < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::ParticipantCommissionList,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig do
        returns(T::Array[GrowsurfRuby::ParticipantCommissionList::Commission])
      end
      attr_accessor :commissions

      sig { returns(Integer) }
      attr_accessor :limit

      sig { returns(T.nilable(String)) }
      attr_accessor :next_id

      sig do
        params(
          commissions:
            T::Array[
              GrowsurfRuby::ParticipantCommissionList::Commission::OrHash
            ],
          limit: Integer,
          next_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(commissions:, limit:, next_id:)
      end

      sig do
        override.returns(
          {
            commissions:
              T::Array[GrowsurfRuby::ParticipantCommissionList::Commission],
            limit: Integer,
            next_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Commission < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::ParticipantCommissionList::Commission,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Integer) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :currency_iso

        sig { returns(String) }
        attr_accessor :referred_id

        sig { returns(String) }
        attr_accessor :referrer_id

        sig { returns(Integer) }
        attr_accessor :sale_amount

        sig do
          returns(
            GrowsurfRuby::ParticipantCommissionList::Commission::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount_in_campaign_currency

        sig { returns(T.nilable(Integer)) }
        attr_reader :approved_at

        sig { params(approved_at: Integer).void }
        attr_writer :approved_at

        sig { returns(T.nilable(String)) }
        attr_accessor :campaign_currency_iso

        sig { returns(T.nilable(Float)) }
        attr_accessor :exchange_rate

        sig { returns(T.nilable(Integer)) }
        attr_reader :exchange_rate_at

        sig { params(exchange_rate_at: Integer).void }
        attr_writer :exchange_rate_at

        sig { returns(T.nilable(String)) }
        attr_accessor :fx_error

        sig { returns(T.nilable(Integer)) }
        attr_accessor :hold_duration

        sig { returns(T.nilable(Integer)) }
        attr_reader :paid_at

        sig { params(paid_at: Integer).void }
        attr_writer :paid_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :payout_queued_at

        sig { params(payout_queued_at: Integer).void }
        attr_writer :payout_queued_at

        sig { returns(T.nilable(String)) }
        attr_accessor :provider

        sig { returns(T.nilable(Integer)) }
        attr_reader :reversed_at

        sig { params(reversed_at: Integer).void }
        attr_writer :reversed_at

        sig { returns(T.nilable(Integer)) }
        attr_accessor :sale_amount_amount_in_campaign_currency

        sig do
          params(
            id: String,
            amount: Integer,
            created_at: Integer,
            currency_iso: String,
            referred_id: String,
            referrer_id: String,
            sale_amount: Integer,
            status:
              GrowsurfRuby::ParticipantCommissionList::Commission::Status::OrSymbol,
            amount_in_campaign_currency: T.nilable(Integer),
            approved_at: Integer,
            campaign_currency_iso: T.nilable(String),
            exchange_rate: T.nilable(Float),
            exchange_rate_at: Integer,
            fx_error: T.nilable(String),
            hold_duration: T.nilable(Integer),
            paid_at: Integer,
            payout_queued_at: Integer,
            provider: T.nilable(String),
            reversed_at: Integer,
            sale_amount_amount_in_campaign_currency: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          amount:,
          created_at:,
          currency_iso:,
          referred_id:,
          referrer_id:,
          sale_amount:,
          status:,
          amount_in_campaign_currency: nil,
          approved_at: nil,
          campaign_currency_iso: nil,
          exchange_rate: nil,
          exchange_rate_at: nil,
          fx_error: nil,
          hold_duration: nil,
          paid_at: nil,
          payout_queued_at: nil,
          provider: nil,
          reversed_at: nil,
          sale_amount_amount_in_campaign_currency: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Integer,
              created_at: Integer,
              currency_iso: String,
              referred_id: String,
              referrer_id: String,
              sale_amount: Integer,
              status:
                GrowsurfRuby::ParticipantCommissionList::Commission::Status::TaggedSymbol,
              amount_in_campaign_currency: T.nilable(Integer),
              approved_at: Integer,
              campaign_currency_iso: T.nilable(String),
              exchange_rate: T.nilable(Float),
              exchange_rate_at: Integer,
              fx_error: T.nilable(String),
              hold_duration: T.nilable(Integer),
              paid_at: Integer,
              payout_queued_at: Integer,
              provider: T.nilable(String),
              reversed_at: Integer,
              sale_amount_amount_in_campaign_currency: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end

        module Status
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                GrowsurfRuby::ParticipantCommissionList::Commission::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              GrowsurfRuby::ParticipantCommissionList::Commission::Status::TaggedSymbol
            )
          APPROVED =
            T.let(
              :APPROVED,
              GrowsurfRuby::ParticipantCommissionList::Commission::Status::TaggedSymbol
            )
          PAID =
            T.let(
              :PAID,
              GrowsurfRuby::ParticipantCommissionList::Commission::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :REVERSED,
              GrowsurfRuby::ParticipantCommissionList::Commission::Status::TaggedSymbol
            )
          DELETED =
            T.let(
              :DELETED,
              GrowsurfRuby::ParticipantCommissionList::Commission::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::ParticipantCommissionList::Commission::Status::TaggedSymbol
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
