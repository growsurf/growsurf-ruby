# typed: strong

module GrowsurfRuby
  module Models
    class CommissionStructure < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CommissionStructure,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      sig { returns(T.nilable(String)) }
      attr_accessor :amount_iso

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :approval_required

      sig { returns(T.nilable(String)) }
      attr_accessor :duration

      sig { returns(T.nilable(Integer)) }
      attr_accessor :duration_in_months

      sig { returns(T.nilable(String)) }
      attr_accessor :event

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :has_intro

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :has_max_amount

      sig { returns(T.nilable(Integer)) }
      attr_accessor :hold_duration

      sig { returns(T.nilable(Integer)) }
      attr_accessor :intro_amount

      sig { returns(T.nilable(String)) }
      attr_accessor :intro_amount_iso

      sig { returns(T.nilable(String)) }
      attr_accessor :intro_duration

      sig { returns(T.nilable(Integer)) }
      attr_accessor :intro_duration_in_months

      sig { returns(T.nilable(Float)) }
      attr_accessor :intro_percent

      sig { returns(T.nilable(String)) }
      attr_accessor :intro_type

      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_amount

      sig { returns(T.nilable(String)) }
      attr_accessor :max_amount_iso

      sig { returns(T.nilable(Integer)) }
      attr_accessor :min_paid_referrals

      sig { returns(T.nilable(Float)) }
      attr_accessor :percent

      sig do
        returns(
          T.nilable(GrowsurfRuby::CommissionStructure::Type::TaggedSymbol)
        )
      end
      attr_accessor :type

      sig do
        params(
          amount: T.nilable(Integer),
          amount_iso: T.nilable(String),
          approval_required: T.nilable(T::Boolean),
          duration: T.nilable(String),
          duration_in_months: T.nilable(Integer),
          event: T.nilable(String),
          has_intro: T.nilable(T::Boolean),
          has_max_amount: T.nilable(T::Boolean),
          hold_duration: T.nilable(Integer),
          intro_amount: T.nilable(Integer),
          intro_amount_iso: T.nilable(String),
          intro_duration: T.nilable(String),
          intro_duration_in_months: T.nilable(Integer),
          intro_percent: T.nilable(Float),
          intro_type: T.nilable(String),
          max_amount: T.nilable(Integer),
          max_amount_iso: T.nilable(String),
          min_paid_referrals: T.nilable(Integer),
          percent: T.nilable(Float),
          type: T.nilable(GrowsurfRuby::CommissionStructure::Type::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        amount: nil,
        amount_iso: nil,
        approval_required: nil,
        duration: nil,
        duration_in_months: nil,
        event: nil,
        has_intro: nil,
        has_max_amount: nil,
        hold_duration: nil,
        intro_amount: nil,
        intro_amount_iso: nil,
        intro_duration: nil,
        intro_duration_in_months: nil,
        intro_percent: nil,
        intro_type: nil,
        max_amount: nil,
        max_amount_iso: nil,
        min_paid_referrals: nil,
        percent: nil,
        type: nil
      )
      end

      sig do
        override.returns(
          {
            amount: T.nilable(Integer),
            amount_iso: T.nilable(String),
            approval_required: T.nilable(T::Boolean),
            duration: T.nilable(String),
            duration_in_months: T.nilable(Integer),
            event: T.nilable(String),
            has_intro: T.nilable(T::Boolean),
            has_max_amount: T.nilable(T::Boolean),
            hold_duration: T.nilable(Integer),
            intro_amount: T.nilable(Integer),
            intro_amount_iso: T.nilable(String),
            intro_duration: T.nilable(String),
            intro_duration_in_months: T.nilable(Integer),
            intro_percent: T.nilable(Float),
            intro_type: T.nilable(String),
            max_amount: T.nilable(Integer),
            max_amount_iso: T.nilable(String),
            min_paid_referrals: T.nilable(Integer),
            percent: T.nilable(Float),
            type:
              T.nilable(GrowsurfRuby::CommissionStructure::Type::TaggedSymbol)
          }
        )
      end
      def to_hash
      end

      module Type
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, GrowsurfRuby::CommissionStructure::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERCENT =
          T.let(:PERCENT, GrowsurfRuby::CommissionStructure::Type::TaggedSymbol)
        FIXED =
          T.let(:FIXED, GrowsurfRuby::CommissionStructure::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[GrowsurfRuby::CommissionStructure::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
