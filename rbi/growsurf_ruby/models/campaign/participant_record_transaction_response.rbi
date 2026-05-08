# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      module ParticipantRecordTransactionResponse
        extend GrowsurfRuby::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::ParticipantRecordTransactionResponse::UnionMember0,
              GrowsurfRuby::Models::Campaign::ParticipantRecordTransactionResponse::UnionMember1
            )
          end

        class UnionMember0 < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                GrowsurfRuby::Models::Campaign::ParticipantRecordTransactionResponse::UnionMember0,
                GrowsurfRuby::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :duplicate

          sig { returns(T::Boolean) }
          attr_accessor :first_sale

          sig { returns(String) }
          attr_accessor :message

          sig { returns(T::Boolean) }
          attr_accessor :success

          sig do
            params(
              first_sale: T::Boolean,
              message: String,
              duplicate: T::Boolean,
              success: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(first_sale:, message:, duplicate: false, success: true)
          end

          sig do
            override.returns(
              {
                duplicate: T::Boolean,
                first_sale: T::Boolean,
                message: String,
                success: T::Boolean
              }
            )
          end
          def to_hash
          end
        end

        class UnionMember1 < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                GrowsurfRuby::Models::Campaign::ParticipantRecordTransactionResponse::UnionMember1,
                GrowsurfRuby::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :commissions_created

          sig { returns(T::Boolean) }
          attr_accessor :duplicate

          sig { returns(T::Array[String]) }
          attr_accessor :duplicate_fields

          sig { returns(T::Array[String]) }
          attr_accessor :matching_commission_ids

          sig { returns(String) }
          attr_accessor :message

          sig { returns(T::Boolean) }
          attr_accessor :success

          sig do
            params(
              commissions_created: Integer,
              duplicate_fields: T::Array[String],
              matching_commission_ids: T::Array[String],
              message: String,
              duplicate: T::Boolean,
              success: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            commissions_created:,
            duplicate_fields:,
            matching_commission_ids:,
            message:,
            duplicate: true,
            success: false
          )
          end

          sig do
            override.returns(
              {
                commissions_created: Integer,
                duplicate: T::Boolean,
                duplicate_fields: T::Array[String],
                matching_commission_ids: T::Array[String],
                message: String,
                success: T::Boolean
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              GrowsurfRuby::Models::Campaign::ParticipantRecordTransactionResponse::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
