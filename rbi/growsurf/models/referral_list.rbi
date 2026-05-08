# typed: strong

module Growsurf
  module Models
    class ReferralList < Growsurf::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Growsurf::ReferralList, Growsurf::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :limit

      sig { returns(T::Boolean) }
      attr_accessor :more

      sig { returns(T::Array[Growsurf::ReferralList::Referral]) }
      attr_accessor :referrals

      sig { returns(T.nilable(String)) }
      attr_accessor :next_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :next_offset

      sig do
        params(
          limit: Integer,
          more: T::Boolean,
          referrals: T::Array[Growsurf::ReferralList::Referral::OrHash],
          next_id: T.nilable(String),
          next_offset: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(limit:, more:, referrals:, next_id: nil, next_offset: nil)
      end

      sig do
        override.returns(
          {
            limit: Integer,
            more: T::Boolean,
            referrals: T::Array[Growsurf::ReferralList::Referral],
            next_id: T.nilable(String),
            next_offset: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      class Referral < Growsurf::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Growsurf::ReferralList::Referral, Growsurf::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :email

        sig { returns(Growsurf::Campaign::ReferralStatus::TaggedSymbol) }
        attr_accessor :referral_status

        sig { returns(String) }
        attr_accessor :referred_by

        sig { returns(Integer) }
        attr_accessor :updated_at

        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        sig do
          params(
            id: String,
            created_at: Integer,
            email: String,
            referral_status: Growsurf::Campaign::ReferralStatus::OrSymbol,
            referred_by: String,
            updated_at: Integer,
            first_name: T.nilable(String),
            last_name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          email:,
          referral_status:,
          referred_by:,
          updated_at:,
          first_name: nil,
          last_name: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Integer,
              email: String,
              referral_status: Growsurf::Campaign::ReferralStatus::TaggedSymbol,
              referred_by: String,
              updated_at: Integer,
              first_name: T.nilable(String),
              last_name: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
