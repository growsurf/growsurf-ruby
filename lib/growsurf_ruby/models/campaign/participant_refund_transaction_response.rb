# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#refund_transaction
      class ParticipantRefundTransactionResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute adjusted
        #
        #   @return [Integer]
        required :adjusted, Integer

        # @!attribute amendment_type
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse::AmendmentType]
        required :amendment_type,
                 enum: -> { GrowsurfRuby::Campaign::ParticipantRefundTransactionResponse::AmendmentType },
                 api_name: :amendmentType

        # @!attribute deleted
        #
        #   @return [Integer]
        required :deleted, Integer

        # @!attribute matched
        #
        #   @return [Integer]
        required :matched, Integer

        # @!attribute matching_commission_ids
        #
        #   @return [Array<String>]
        required :matching_commission_ids,
                 GrowsurfRuby::Internal::Type::ArrayOf[String],
                 api_name: :matchingCommissionIds

        # @!attribute message
        #
        #   @return [String]
        required :message, String

        # @!attribute reversed
        #
        #   @return [Integer]
        required :reversed, Integer

        # @!attribute success
        #
        #   @return [Boolean]
        required :success, GrowsurfRuby::Internal::Type::Boolean

        # @!attribute not_found
        #
        #   @return [Boolean, nil]
        optional :not_found, GrowsurfRuby::Internal::Type::Boolean, api_name: :notFound

        # @!method initialize(adjusted:, amendment_type:, deleted:, matched:, matching_commission_ids:, message:, reversed:, success:, not_found: nil)
        #   @param adjusted [Integer]
        #   @param amendment_type [Symbol, GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse::AmendmentType]
        #   @param deleted [Integer]
        #   @param matched [Integer]
        #   @param matching_commission_ids [Array<String>]
        #   @param message [String]
        #   @param reversed [Integer]
        #   @param success [Boolean]
        #   @param not_found [Boolean]

        # @see GrowsurfRuby::Models::Campaign::ParticipantRefundTransactionResponse#amendment_type
        module AmendmentType
          extend GrowsurfRuby::Internal::Type::Enum

          REFUND = :REFUND
          CHARGEBACK = :CHARGEBACK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
