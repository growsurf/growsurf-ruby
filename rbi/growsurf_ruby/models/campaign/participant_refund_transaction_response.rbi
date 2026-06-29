# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantRefundTransactionResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :adjusted

        sig do
          returns(
            GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse::AmendmentType::TaggedSymbol
          )
        end
        attr_accessor :amendment_type

        sig { returns(Integer) }
        attr_accessor :deleted

        sig { returns(Integer) }
        attr_accessor :matched

        sig { returns(T::Array[String]) }
        attr_accessor :matching_commission_ids

        sig { returns(String) }
        attr_accessor :message

        sig { returns(Integer) }
        attr_accessor :reversed

        sig { returns(T::Boolean) }
        attr_accessor :success

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :not_found

        sig { params(not_found: T::Boolean).void }
        attr_writer :not_found

        sig do
          params(
            adjusted: Integer,
            amendment_type:
              GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse::AmendmentType::OrSymbol,
            deleted: Integer,
            matched: Integer,
            matching_commission_ids: T::Array[String],
            message: String,
            reversed: Integer,
            success: T::Boolean,
            not_found: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          adjusted:,
          amendment_type:,
          deleted:,
          matched:,
          matching_commission_ids:,
          message:,
          reversed:,
          success:,
          not_found: nil
        )
        end

        sig do
          override.returns(
            {
              adjusted: Integer,
              amendment_type:
                GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse::AmendmentType::TaggedSymbol,
              deleted: Integer,
              matched: Integer,
              matching_commission_ids: T::Array[String],
              message: String,
              reversed: Integer,
              success: T::Boolean,
              not_found: T::Boolean
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
                GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse::AmendmentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REFUND =
            T.let(
              :REFUND,
              GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse::AmendmentType::TaggedSymbol
            )
          CHARGEBACK =
            T.let(
              :CHARGEBACK,
              GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse::AmendmentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse::AmendmentType::TaggedSymbol
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
