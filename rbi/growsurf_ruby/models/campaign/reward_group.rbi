# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class RewardGroupRule < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(RewardGroupRule, GrowsurfRuby::Internal::AnyHash)
          end

        sig { returns(Type::TaggedSymbol) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :value

        sig do
          params(type: Type::OrSymbol, value: String).returns(T.attached_class)
        end
        def self.new(type:, value:)
        end

        sig { override.returns({ type: Type::TaggedSymbol, value: String }) }
        def to_hash
        end

        module Type
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }
          PARTICIPANT = T.let(:PARTICIPANT, TaggedSymbol)
          EMAIL = T.let(:EMAIL, TaggedSymbol)
          DOMAIN = T.let(:DOMAIN, TaggedSymbol)
          sig { override.returns(T::Array[TaggedSymbol]) }
          def self.values
          end
        end
      end

      class RewardGroup < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(RewardGroup, GrowsurfRuby::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Integer) }
        attr_accessor :order

        sig { returns(T::Array[RewardGroupRule]) }
        attr_accessor :rules

        sig { returns(String) }
        attr_accessor :signup_code

        sig { returns(Integer) }
        attr_accessor :created_at

        sig { returns(Integer) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            name: String,
            order: Integer,
            rules: T::Array[RewardGroupRule::OrHash],
            signup_code: String,
            created_at: Integer,
            updated_at: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          name:,
          order:,
          rules:,
          signup_code:,
          created_at:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: String,
              order: Integer,
              rules: T::Array[RewardGroupRule],
              signup_code: String,
              created_at: Integer,
              updated_at: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
