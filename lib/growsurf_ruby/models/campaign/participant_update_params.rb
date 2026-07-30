# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#update
      class ParticipantUpdateParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute participant_id_or_email
        #
        #   @return [String]
        required :participant_id_or_email, String

        # @!attribute affiliate_status
        #   Affiliate programs only. Sets the affiliate status. `APPROVED` also enrolls a
        #   participant who is not yet an affiliate. `SUSPENDED` and `BANNED` are rejected
        #   for non-affiliates.
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantUpdateParams::AffiliateStatus, nil]
        optional :affiliate_status,
                 enum: -> { GrowsurfRuby::Campaign::ParticipantUpdateParams::AffiliateStatus },
                 api_name: :affiliateStatus

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
        optional :metadata, GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]

        # @!attribute notes
        #   Freeform internal notes about the participant (internal only, never exposed to
        #   participants).
        #
        #   @return [String, nil]
        optional :notes, String

        # @!attribute referral_status
        #
        #   @return [Symbol, GrowsurfRuby::Models::Campaign::ParticipantUpdateParams::ReferralStatus, nil]
        optional :referral_status,
                 enum: -> { GrowsurfRuby::Campaign::ParticipantUpdateParams::ReferralStatus },
                 api_name: :referralStatus

        # @!attribute referred_by
        #
        #   @return [String, nil]
        optional :referred_by, String, api_name: :referredBy

        # @!attribute unsubscribed
        #
        #   @return [Boolean, nil]
        optional :unsubscribed, GrowsurfRuby::Internal::Type::Boolean

        # @!attribute vanity_keys
        #
        #   @return [Array<String>, nil]
        optional :vanity_keys, GrowsurfRuby::Internal::Type::ArrayOf[String], api_name: :vanityKeys

        # @!method initialize(id:, participant_id_or_email:, affiliate_status: nil, email: nil, first_name: nil, last_name: nil, metadata: nil, notes: nil, referral_status: nil, referred_by: nil, unsubscribed: nil, vanity_keys: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::Campaign::ParticipantUpdateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param participant_id_or_email [String]
        #
        #   @param affiliate_status [Symbol, GrowsurfRuby::Models::Campaign::ParticipantUpdateParams::AffiliateStatus] Affiliate programs only. Sets the affiliate status.
        #
        #   @param email [String]
        #
        #   @param first_name [String]
        #
        #   @param last_name [String]
        #
        #   @param metadata [Hash{Symbol=>Object}] Shallow custom metadata object.
        #
        #   @param notes [String] Freeform internal notes about the participant (internal only, never exposed to pa
        #
        #   @param referral_status [Symbol, GrowsurfRuby::Models::Campaign::ParticipantUpdateParams::ReferralStatus]
        #
        #   @param referred_by [String]
        #
        #   @param unsubscribed [Boolean]
        #
        #   @param vanity_keys [Array<String>]
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]

        # @see GrowsurfRuby::Models::Campaign::ParticipantUpdateParams#affiliate_status
        module AffiliateStatus
          extend GrowsurfRuby::Internal::Type::Enum

          APPROVED = :APPROVED
          SUSPENDED = :SUSPENDED
          BANNED = :BANNED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module ReferralStatus
          extend GrowsurfRuby::Internal::Type::Enum

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
