# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      class ParticipantReward < Growsurf::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute reward_id
        #
        #   @return [String]
        required :reward_id, String, api_name: :rewardId

        # @!attribute status
        #
        #   @return [Symbol, Growsurf::Models::Campaign::ParticipantReward::Status]
        required :status, enum: -> { Growsurf::Campaign::ParticipantReward::Status }

        # @!attribute approved
        #
        #   @return [Boolean, nil]
        optional :approved, Growsurf::Internal::Type::Boolean

        # @!attribute approved_at
        #
        #   @return [Integer, nil]
        optional :approved_at, Integer, api_name: :approvedAt

        # @!attribute commission_structure
        #
        #   @return [Growsurf::Models::CommissionStructure, nil]
        optional :commission_structure,
                 -> { Growsurf::CommissionStructure },
                 api_name: :commissionStructure,
                 nil?: true

        # @!attribute fulfilled_at
        #
        #   @return [Integer, nil]
        optional :fulfilled_at, Integer, api_name: :fulfilledAt

        # @!attribute is_available
        #
        #   @return [Boolean, nil]
        optional :is_available, Growsurf::Internal::Type::Boolean, api_name: :isAvailable

        # @!attribute is_fulfilled
        #
        #   @return [Boolean, nil]
        optional :is_fulfilled, Growsurf::Internal::Type::Boolean, api_name: :isFulfilled

        # @!attribute is_referrer
        #
        #   @return [Boolean, nil]
        optional :is_referrer, Growsurf::Internal::Type::Boolean, api_name: :isReferrer

        # @!attribute referred_id
        #
        #   @return [String, nil]
        optional :referred_id, String, api_name: :referredId

        # @!attribute referrer_id
        #
        #   @return [String, nil]
        optional :referrer_id, String, api_name: :referrerId

        # @!attribute unread
        #
        #   @return [Boolean, nil]
        optional :unread, Growsurf::Internal::Type::Boolean

        # @!method initialize(id:, reward_id:, status:, approved: nil, approved_at: nil, commission_structure: nil, fulfilled_at: nil, is_available: nil, is_fulfilled: nil, is_referrer: nil, referred_id: nil, referrer_id: nil, unread: nil)
        #   @param id [String]
        #   @param reward_id [String]
        #   @param status [Symbol, Growsurf::Models::Campaign::ParticipantReward::Status]
        #   @param approved [Boolean]
        #   @param approved_at [Integer]
        #   @param commission_structure [Growsurf::Models::CommissionStructure, nil]
        #   @param fulfilled_at [Integer]
        #   @param is_available [Boolean]
        #   @param is_fulfilled [Boolean]
        #   @param is_referrer [Boolean]
        #   @param referred_id [String]
        #   @param referrer_id [String]
        #   @param unread [Boolean]

        # @see Growsurf::Models::Campaign::ParticipantReward#status
        module Status
          extend Growsurf::Internal::Type::Enum

          PENDING = :PENDING
          FULFILLED = :FULFILLED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
