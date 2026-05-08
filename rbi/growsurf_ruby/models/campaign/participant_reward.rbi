# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantReward < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::ParticipantReward,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :reward_id

        sig do
          returns(
            GrowsurfRuby::Campaign::ParticipantReward::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :approved

        sig { params(approved: T::Boolean).void }
        attr_writer :approved

        sig { returns(T.nilable(Integer)) }
        attr_reader :approved_at

        sig { params(approved_at: Integer).void }
        attr_writer :approved_at

        sig { returns(T.nilable(GrowsurfRuby::CommissionStructure)) }
        attr_reader :commission_structure

        sig do
          params(
            commission_structure:
              T.nilable(GrowsurfRuby::CommissionStructure::OrHash)
          ).void
        end
        attr_writer :commission_structure

        sig { returns(T.nilable(Integer)) }
        attr_reader :fulfilled_at

        sig { params(fulfilled_at: Integer).void }
        attr_writer :fulfilled_at

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_available

        sig { params(is_available: T::Boolean).void }
        attr_writer :is_available

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_fulfilled

        sig { params(is_fulfilled: T::Boolean).void }
        attr_writer :is_fulfilled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_referrer

        sig { params(is_referrer: T::Boolean).void }
        attr_writer :is_referrer

        sig { returns(T.nilable(String)) }
        attr_reader :referred_id

        sig { params(referred_id: String).void }
        attr_writer :referred_id

        sig { returns(T.nilable(String)) }
        attr_reader :referrer_id

        sig { params(referrer_id: String).void }
        attr_writer :referrer_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :unread

        sig { params(unread: T::Boolean).void }
        attr_writer :unread

        sig do
          params(
            id: String,
            reward_id: String,
            status: GrowsurfRuby::Campaign::ParticipantReward::Status::OrSymbol,
            approved: T::Boolean,
            approved_at: Integer,
            commission_structure:
              T.nilable(GrowsurfRuby::CommissionStructure::OrHash),
            fulfilled_at: Integer,
            is_available: T::Boolean,
            is_fulfilled: T::Boolean,
            is_referrer: T::Boolean,
            referred_id: String,
            referrer_id: String,
            unread: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          reward_id:,
          status:,
          approved: nil,
          approved_at: nil,
          commission_structure: nil,
          fulfilled_at: nil,
          is_available: nil,
          is_fulfilled: nil,
          is_referrer: nil,
          referred_id: nil,
          referrer_id: nil,
          unread: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              reward_id: String,
              status:
                GrowsurfRuby::Campaign::ParticipantReward::Status::TaggedSymbol,
              approved: T::Boolean,
              approved_at: Integer,
              commission_structure:
                T.nilable(GrowsurfRuby::CommissionStructure),
              fulfilled_at: Integer,
              is_available: T::Boolean,
              is_fulfilled: T::Boolean,
              is_referrer: T::Boolean,
              referred_id: String,
              referrer_id: String,
              unread: T::Boolean
            }
          )
        end
        def to_hash
        end

        module Status
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, GrowsurfRuby::Campaign::ParticipantReward::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              GrowsurfRuby::Campaign::ParticipantReward::Status::TaggedSymbol
            )
          FULFILLED =
            T.let(
              :FULFILLED,
              GrowsurfRuby::Campaign::ParticipantReward::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Campaign::ParticipantReward::Status::TaggedSymbol
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
