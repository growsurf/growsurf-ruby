# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#list_referrals
    class ReferralList < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute limit
      #
      #   @return [Integer]
      required :limit, Integer

      # @!attribute more
      #
      #   @return [Boolean]
      required :more, GrowsurfRuby::Internal::Type::Boolean

      # @!attribute referrals
      #
      #   @return [Array<GrowsurfRuby::Models::ReferralList::Referral>]
      required :referrals, -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::ReferralList::Referral] }

      # @!attribute next_id
      #
      #   @return [String, nil]
      optional :next_id, String, api_name: :nextId, nil?: true

      # @!attribute next_offset
      #
      #   @return [Integer, nil]
      optional :next_offset, Integer, api_name: :nextOffset, nil?: true

      # @!method initialize(limit:, more:, referrals:, next_id: nil, next_offset: nil)
      #   @param limit [Integer]
      #   @param more [Boolean]
      #   @param referrals [Array<GrowsurfRuby::Models::ReferralList::Referral>]
      #   @param next_id [String, nil]
      #   @param next_offset [Integer, nil]

      class Referral < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Integer]
        required :created_at, Integer, api_name: :createdAt

        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute referral_status
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ReferralStatus]
        required :referral_status,
                 enum: -> {
                   GrowsurfRuby::Campaign::ReferralStatus
                 },
                 api_name: :referralStatus

        # @!attribute referred_by
        #
        #   @return [String]
        required :referred_by, String, api_name: :referredBy

        # @!attribute updated_at
        #
        #   @return [Integer]
        required :updated_at, Integer, api_name: :updatedAt

        # @!attribute first_name
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName, nil?: true

        # @!attribute last_name
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName, nil?: true

        # @!attribute referral_credit_expired_at
        #   When the referrer's credit for this referral expired, as a Unix timestamp in milliseconds. `null` when the credit has not expired.
        #
        #   @return [Integer, nil]
        optional :referral_credit_expired_at, Integer, api_name: :referralCreditExpiredAt, nil?: true

        # @!attribute referral_triggered_at
        #   When the referral was triggered, as a Unix timestamp in milliseconds. `null` until the referral is triggered, and for invites.
        #
        #   @return [Integer, nil]
        optional :referral_triggered_at, Integer, api_name: :referralTriggeredAt, nil?: true

        # @!method initialize(id:, created_at:, email:, referral_status:, referred_by:, updated_at:, first_name: nil, last_name: nil, referral_credit_expired_at: nil, referral_triggered_at: nil)
        #   @param id [String]
        #   @param created_at [Integer]
        #   @param email [String]
        #   @param referral_status [Symbol, GrowsurfRuby::Models::Campaign::ReferralStatus]
        #   @param referred_by [String]
        #   @param updated_at [Integer]
        #   @param first_name [String, nil]
        #   @param last_name [String, nil]
        #
        #   @param referral_credit_expired_at [Integer, nil] When the referrer's credit for this referral expired, as a Unix timestamp in milliseconds. `null` when the credit has not expired.
        #
        #   @param referral_triggered_at [Integer, nil] When the referral was triggered, as a Unix timestamp in milliseconds. `null` until the referral is triggered, and for invites.
      end
    end
  end
end
