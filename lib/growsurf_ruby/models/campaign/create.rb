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

        # @!attribute mobile_instance_id
        #   Optional app-install scoped identifier for native mobile anti-fraud. Recommended
        #   for mobile participant creation and mobile participant token flows. The official
        #   mobile SDKs generate this as a lowercase UUID.
        #
        #   @return [String, nil]
        optional :mobile_instance_id, String, api_name: :mobileInstanceId

        # @!attribute referral_status
        #   The referral credit status; only meaningful when `referred_by` resolves to a
        #   referrer. When omitted it is derived from the program's referral trigger
        #   (`CREDIT_AWARDED`, `CREDIT_PENDING`, or `CREDIT_EXPIRED`); left unset when no
        #   referrer resolves.
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

        # @!method initialize(email:, fingerprint: nil, first_name: nil, ip_address: nil, last_name: nil, metadata: nil, mobile_instance_id: nil, referral_status: nil, referred_by: nil)
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::Campaign::Create} for more details.
        #
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
        #   @param mobile_instance_id [String] Optional app-install scoped identifier for native mobile anti-fraud. Recommended
        #
        #   @param referral_status [Symbol, GrowsurfRuby::Models::Campaign::Create::ReferralStatus] The referral credit status; only meaningful when `referred_by` resolves to a ref
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
