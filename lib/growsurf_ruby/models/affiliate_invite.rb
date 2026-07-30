# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#create_affiliate_invite
    class AffiliateInvite < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute accepted_at
      #   When the invite was accepted, in Unix milliseconds. `null` until accepted.
      #
      #   @return [Integer, nil]
      optional :accepted_at, Integer, api_name: :acceptedAt, nil?: true

      # @!attribute created_at
      #   When the invite was created, in Unix milliseconds.
      #
      #   @return [Integer, nil]
      optional :created_at, Integer, api_name: :createdAt

      # @!attribute email
      #   Invitee email address.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute expires_at
      #   When the emailed accept link stops working, in Unix milliseconds.
      #
      #   @return [Integer, nil]
      optional :expires_at, Integer, api_name: :expiresAt

      # @!attribute first_name
      #   Invitee first name, when provided.
      #
      #   @return [String, nil]
      optional :first_name, String, api_name: :firstName, nil?: true

      # @!attribute id
      #   Invite ID.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute last_name
      #   Invitee last name, when provided.
      #
      #   @return [String, nil]
      optional :last_name, String, api_name: :lastName, nil?: true

      # @!attribute last_sent_at
      #   When the invite email was last sent, in Unix milliseconds.
      #
      #   @return [Integer, nil]
      optional :last_sent_at, Integer, api_name: :lastSentAt

      # @!attribute revoked_at
      #   When the invite was revoked, in Unix milliseconds. `null` unless revoked.
      #
      #   @return [Integer, nil]
      optional :revoked_at, Integer, api_name: :revokedAt, nil?: true

      # @!attribute status
      #   The invite's lifecycle state. Accepting a pending invite enrolls the invitee as
      #   an approved affiliate.
      #
      #   @return [Symbol, GrowsurfRuby::Models::AffiliateInvite::Status, nil]
      optional :status, enum: -> { GrowsurfRuby::AffiliateInvite::Status }

      # @!method initialize(accepted_at: nil, created_at: nil, email: nil, expires_at: nil, first_name: nil, id: nil, last_name: nil, last_sent_at: nil, revoked_at: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {GrowsurfRuby::Models::AffiliateInvite} for more details.
      #
      #   @param accepted_at [Integer, nil] When the invite was accepted, in Unix milliseconds. `null` until accepted.
      #
      #   @param created_at [Integer] When the invite was created, in Unix milliseconds.
      #
      #   @param email [String] Invitee email address.
      #
      #   @param expires_at [Integer] When the emailed accept link stops working, in Unix milliseconds.
      #
      #   @param first_name [String, nil] Invitee first name, when provided.
      #
      #   @param id [String] Invite ID.
      #
      #   @param last_name [String, nil] Invitee last name, when provided.
      #
      #   @param last_sent_at [Integer] When the invite email was last sent, in Unix milliseconds.
      #
      #   @param revoked_at [Integer, nil] When the invite was revoked, in Unix milliseconds. `null` unless revoked.
      #
      #   @param status [Symbol, GrowsurfRuby::Models::AffiliateInvite::Status] The invite's lifecycle state. Accepting a pending invite enrolls the invitee as

      # The invite's lifecycle state. Accepting a pending invite enrolls the invitee as
      # an approved affiliate.
      #
      # @see GrowsurfRuby::Models::AffiliateInvite#status
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        PENDING = :PENDING
        ACCEPTED = :ACCEPTED
        EXPIRED = :EXPIRED
        REVOKED = :REVOKED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
