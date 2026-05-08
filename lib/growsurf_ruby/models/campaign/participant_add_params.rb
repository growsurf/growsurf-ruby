# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#add
      class ParticipantAddParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

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
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantAddParams::ReferralStatus, nil]
        optional :referral_status,
                 enum: -> { GrowsurfRuby::Campaign::ParticipantAddParams::ReferralStatus },
                 api_name: :referralStatus

        # @!attribute referred_by
        #   Referrer participant ID or email address.
        #
        #   @return [String, nil]
        optional :referred_by, String, api_name: :referredBy

        # @!method initialize(id:, email:, fingerprint: nil, first_name: nil, ip_address: nil, last_name: nil, metadata: nil, referral_status: nil, referred_by: nil, request_options: {})
        #   @param id [String]
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
        #   @param referral_status [Symbol, GrowsurfRuby::Models::Campaign::ParticipantAddParams::ReferralStatus]
        #
        #   @param referred_by [String] Referrer participant ID or email address.
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

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
