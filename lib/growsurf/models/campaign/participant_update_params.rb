# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      # @see Growsurf::Resources::Campaign::Participant#update
      class ParticipantUpdateParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute participant_id_or_email
        #
        #   @return [String]
        required :participant_id_or_email, String

        # @!attribute email
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute first_name
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName

        # @!attribute last_name
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName

        # @!attribute metadata
        #   Shallow custom metadata object.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Growsurf::Internal::Type::HashOf[Growsurf::Internal::Type::Unknown]

        # @!attribute referral_status
        #
        #   @return [Symbol, Growsurf::Models::Campaign::ParticipantUpdateParams::ReferralStatus, nil]
        optional :referral_status,
                 enum: -> { Growsurf::Campaign::ParticipantUpdateParams::ReferralStatus },
                 api_name: :referralStatus

        # @!attribute referred_by
        #
        #   @return [String, nil]
        optional :referred_by, String, api_name: :referredBy

        # @!attribute unsubscribed
        #
        #   @return [Boolean, nil]
        optional :unsubscribed, Growsurf::Internal::Type::Boolean

        # @!attribute vanity_keys
        #
        #   @return [Array<String>, nil]
        optional :vanity_keys, Growsurf::Internal::Type::ArrayOf[String], api_name: :vanityKeys

        # @!method initialize(id:, participant_id_or_email:, email: nil, first_name: nil, last_name: nil, metadata: nil, referral_status: nil, referred_by: nil, unsubscribed: nil, vanity_keys: nil, request_options: {})
        #   @param id [String]
        #
        #   @param participant_id_or_email [String]
        #
        #   @param email [String]
        #
        #   @param first_name [String]
        #
        #   @param last_name [String]
        #
        #   @param metadata [Hash{Symbol=>Object}] Shallow custom metadata object.
        #
        #   @param referral_status [Symbol, Growsurf::Models::Campaign::ParticipantUpdateParams::ReferralStatus]
        #
        #   @param referred_by [String]
        #
        #   @param unsubscribed [Boolean]
        #
        #   @param vanity_keys [Array<String>]
        #
        #   @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}]

        module ReferralStatus
          extend Growsurf::Internal::Type::Enum

          CREDIT_PENDING = :CREDIT_PENDING
          CREDIT_AWARDED = :CREDIT_AWARDED
          CREDIT_EXPIRED = :CREDIT_EXPIRED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
