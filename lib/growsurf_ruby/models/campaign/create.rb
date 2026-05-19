# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      class Create < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute fingerprint
        #
        #   @return [String, nil]
        optional :fingerprint, String

        # @!attribute first_name
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName

        # @!attribute ip_address
        #
        #   @return [String, nil]
        optional :ip_address, String, api_name: :ipAddress

        # @!attribute last_name
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName

        # @!attribute metadata
        #   Shallow custom metadata object.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]

        # @!attribute referral_status
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::Create::ReferralStatus, nil]
        optional :referral_status,
                 enum: -> { GrowsurfRuby::Campaign::Create::ReferralStatus },
                 api_name: :referralStatus

        # @!attribute referred_by
        #   Referrer participant ID or email address.
        #
        #   @return [String, nil]
        optional :referred_by, String, api_name: :referredBy

        # @!method initialize(email:, fingerprint: nil, first_name: nil, ip_address: nil, last_name: nil, metadata: nil, referral_status: nil, referred_by: nil)
        #   @param email [String]
        #
        #   @param fingerprint [String]
        #
        #   @param first_name [String]
        #
        #   @param ip_address [String]
        #
        #   @param last_name [String]
        #
        #   @param metadata [Hash{Symbol=>Object}] Shallow custom metadata object.
        #
        #   @param referral_status [Symbol, GrowsurfRuby::Models::Campaign::Create::ReferralStatus]
        #
        #   @param referred_by [String] Referrer participant ID or email address.

        # @see GrowsurfRuby::Models::Campaign::Create#referral_status
        module ReferralStatus
          extend GrowsurfRuby::Internal::Type::Enum

          CREDIT_PENDING = :CREDIT_PENDING
          CREDIT_AWARDED = :CREDIT_AWARDED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
