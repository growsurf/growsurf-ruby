# typed: strong

module Growsurf
  module Models
    class CampaignAPI < Growsurf::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Growsurf::CampaignAPI, Growsurf::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Integer) }
      attr_accessor :impression_count

      sig { returns(Integer) }
      attr_accessor :invite_count

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Integer) }
      attr_accessor :participant_count

      sig { returns(Integer) }
      attr_accessor :referral_count

      sig { returns(T::Array[Growsurf::CampaignAPI::Reward]) }
      attr_accessor :rewards

      sig { returns(Growsurf::CampaignAPI::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Growsurf::CampaignAPI::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Integer) }
      attr_accessor :winner_count

      sig { returns(T.nilable(String)) }
      attr_reader :currency_iso

      sig { params(currency_iso: String).void }
      attr_writer :currency_iso

      sig do
        params(
          id: String,
          impression_count: Integer,
          invite_count: Integer,
          name: String,
          participant_count: Integer,
          referral_count: Integer,
          rewards: T::Array[Growsurf::CampaignAPI::Reward::OrHash],
          status: Growsurf::CampaignAPI::Status::OrSymbol,
          type: Growsurf::CampaignAPI::Type::OrSymbol,
          winner_count: Integer,
          currency_iso: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        impression_count:,
        invite_count:,
        name:,
        participant_count:,
        referral_count:,
        rewards:,
        status:,
        type:,
        winner_count:,
        currency_iso: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            impression_count: Integer,
            invite_count: Integer,
            name: String,
            participant_count: Integer,
            referral_count: Integer,
            rewards: T::Array[Growsurf::CampaignAPI::Reward],
            status: Growsurf::CampaignAPI::Status::TaggedSymbol,
            type: Growsurf::CampaignAPI::Type::TaggedSymbol,
            winner_count: Integer,
            currency_iso: String
          }
        )
      end
      def to_hash
      end

      class Reward < Growsurf::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Growsurf::CampaignAPI::Reward, Growsurf::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :is_unlimited

        # Shallow custom metadata object.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :metadata

        sig { returns(Growsurf::CampaignAPI::Reward::Type::TaggedSymbol) }
        attr_accessor :type

        sig { returns(T.nilable(Growsurf::CommissionStructure)) }
        attr_reader :commission_structure

        sig do
          params(
            commission_structure:
              T.nilable(Growsurf::CommissionStructure::OrHash)
          ).void
        end
        attr_writer :commission_structure

        sig { returns(T.nilable(Integer)) }
        attr_accessor :conversions_required

        sig { returns(T.nilable(String)) }
        attr_accessor :coupon_code

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(String)) }
        attr_accessor :image_url

        # `-1` represents an unlimited reward in REST responses.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit

        sig do
          returns(
            T.nilable(
              Growsurf::CampaignAPI::Reward::LimitDuration::TaggedSymbol
            )
          )
        end
        attr_accessor :limit_duration

        sig { returns(T.nilable(String)) }
        attr_accessor :next_milestone_prefix

        sig { returns(T.nilable(String)) }
        attr_accessor :next_milestone_suffix

        sig { returns(T.nilable(Integer)) }
        attr_accessor :number_of_winners

        sig { returns(T.nilable(Integer)) }
        attr_accessor :order

        sig { returns(T.nilable(String)) }
        attr_accessor :referral_description

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :referred_reward_upfront

        sig { params(referred_reward_upfront: T::Boolean).void }
        attr_writer :referred_reward_upfront

        sig do
          params(
            id: String,
            is_unlimited: T::Boolean,
            metadata: T::Hash[Symbol, T.anything],
            type: Growsurf::CampaignAPI::Reward::Type::OrSymbol,
            commission_structure:
              T.nilable(Growsurf::CommissionStructure::OrHash),
            conversions_required: T.nilable(Integer),
            coupon_code: T.nilable(String),
            description: T.nilable(String),
            image_url: T.nilable(String),
            limit: T.nilable(Integer),
            limit_duration:
              T.nilable(Growsurf::CampaignAPI::Reward::LimitDuration::OrSymbol),
            next_milestone_prefix: T.nilable(String),
            next_milestone_suffix: T.nilable(String),
            number_of_winners: T.nilable(Integer),
            order: T.nilable(Integer),
            referral_description: T.nilable(String),
            referred_reward_upfront: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          is_unlimited:,
          # Shallow custom metadata object.
          metadata:,
          type:,
          commission_structure: nil,
          conversions_required: nil,
          coupon_code: nil,
          description: nil,
          image_url: nil,
          # `-1` represents an unlimited reward in REST responses.
          limit: nil,
          limit_duration: nil,
          next_milestone_prefix: nil,
          next_milestone_suffix: nil,
          number_of_winners: nil,
          order: nil,
          referral_description: nil,
          referred_reward_upfront: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              is_unlimited: T::Boolean,
              metadata: T::Hash[Symbol, T.anything],
              type: Growsurf::CampaignAPI::Reward::Type::TaggedSymbol,
              commission_structure: T.nilable(Growsurf::CommissionStructure),
              conversions_required: T.nilable(Integer),
              coupon_code: T.nilable(String),
              description: T.nilable(String),
              image_url: T.nilable(String),
              limit: T.nilable(Integer),
              limit_duration:
                T.nilable(
                  Growsurf::CampaignAPI::Reward::LimitDuration::TaggedSymbol
                ),
              next_milestone_prefix: T.nilable(String),
              next_milestone_suffix: T.nilable(String),
              number_of_winners: T.nilable(Integer),
              order: T.nilable(Integer),
              referral_description: T.nilable(String),
              referred_reward_upfront: T::Boolean
            }
          )
        end
        def to_hash
        end

        module Type
          extend Growsurf::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Growsurf::CampaignAPI::Reward::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE_SIDED =
            T.let(
              :SINGLE_SIDED,
              Growsurf::CampaignAPI::Reward::Type::TaggedSymbol
            )
          DOUBLE_SIDED =
            T.let(
              :DOUBLE_SIDED,
              Growsurf::CampaignAPI::Reward::Type::TaggedSymbol
            )
          MILESTONE =
            T.let(:MILESTONE, Growsurf::CampaignAPI::Reward::Type::TaggedSymbol)
          LEADERBOARD =
            T.let(
              :LEADERBOARD,
              Growsurf::CampaignAPI::Reward::Type::TaggedSymbol
            )
          AFFILIATE =
            T.let(:AFFILIATE, Growsurf::CampaignAPI::Reward::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Growsurf::CampaignAPI::Reward::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module LimitDuration
          extend Growsurf::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Growsurf::CampaignAPI::Reward::LimitDuration)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_TOTAL =
            T.let(
              :IN_TOTAL,
              Growsurf::CampaignAPI::Reward::LimitDuration::TaggedSymbol
            )
          PER_MONTH =
            T.let(
              :PER_MONTH,
              Growsurf::CampaignAPI::Reward::LimitDuration::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Growsurf::CampaignAPI::Reward::LimitDuration::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      module Status
        extend Growsurf::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Growsurf::CampaignAPI::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT = T.let(:DRAFT, Growsurf::CampaignAPI::Status::TaggedSymbol)
        IN_PROGRESS =
          T.let(:IN_PROGRESS, Growsurf::CampaignAPI::Status::TaggedSymbol)
        COMPLETE = T.let(:COMPLETE, Growsurf::CampaignAPI::Status::TaggedSymbol)
        DELETED = T.let(:DELETED, Growsurf::CampaignAPI::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Growsurf::CampaignAPI::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Growsurf::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Growsurf::CampaignAPI::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REFERRAL = T.let(:REFERRAL, Growsurf::CampaignAPI::Type::TaggedSymbol)
        AFFILIATE = T.let(:AFFILIATE, Growsurf::CampaignAPI::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Growsurf::CampaignAPI::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
