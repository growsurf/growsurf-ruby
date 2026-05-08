# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      # @see Growsurf::Resources::Campaign::Participant#record_transaction
      module ParticipantRecordTransactionResponse
        extend Growsurf::Internal::Type::Union

        variant -> { Growsurf::Models::Campaign::ParticipantRecordTransactionResponse::UnionMember0 }

        variant -> { Growsurf::Models::Campaign::ParticipantRecordTransactionResponse::UnionMember1 }

        class UnionMember0 < Growsurf::Internal::Type::BaseModel
          # @!attribute duplicate
          #
          #   @return [Boolean, false]
          required :duplicate, const: false

          # @!attribute first_sale
          #
          #   @return [Boolean]
          required :first_sale, Growsurf::Internal::Type::Boolean, api_name: :firstSale

          # @!attribute message
          #
          #   @return [String]
          required :message, String

          # @!attribute success
          #
          #   @return [Boolean, true]
          required :success, const: true

          # @!method initialize(first_sale:, message:, duplicate: false, success: true)
          #   @param first_sale [Boolean]
          #   @param message [String]
          #   @param duplicate [Boolean, false]
          #   @param success [Boolean, true]
        end

        class UnionMember1 < Growsurf::Internal::Type::BaseModel
          # @!attribute commissions_created
          #
          #   @return [Integer]
          required :commissions_created, Integer, api_name: :commissionsCreated

          # @!attribute duplicate
          #
          #   @return [Boolean, true]
          required :duplicate, const: true

          # @!attribute duplicate_fields
          #
          #   @return [Array<String>]
          required :duplicate_fields, Growsurf::Internal::Type::ArrayOf[String], api_name: :duplicateFields

          # @!attribute matching_commission_ids
          #
          #   @return [Array<String>]
          required :matching_commission_ids,
                   Growsurf::Internal::Type::ArrayOf[String],
                   api_name: :matchingCommissionIds

          # @!attribute message
          #
          #   @return [String]
          required :message, String

          # @!attribute success
          #
          #   @return [Boolean, false]
          required :success, const: false

          # @!method initialize(commissions_created:, duplicate_fields:, matching_commission_ids:, message:, duplicate: true, success: false)
          #   @param commissions_created [Integer]
          #   @param duplicate_fields [Array<String>]
          #   @param matching_commission_ids [Array<String>]
          #   @param message [String]
          #   @param duplicate [Boolean, true]
          #   @param success [Boolean, false]
        end

        # @!method self.variants
        #   @return [Array(Growsurf::Models::Campaign::ParticipantRecordTransactionResponse::UnionMember0, Growsurf::Models::Campaign::ParticipantRecordTransactionResponse::UnionMember1)]
      end
    end
  end
end
