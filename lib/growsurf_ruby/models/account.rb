# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Account#retrieve
    class Account < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute id
      #   The account's unique identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute verification_status
      #   GrowSurf-team verification state. `VERIFIED` is required before a program can
      #   send participant emails.
      #
      #   @return [Symbol, GrowsurfRuby::Models::Account::VerificationStatus]
      required :verification_status,
               enum: -> { GrowsurfRuby::Account::VerificationStatus },
               api_name: :verificationStatus

      # @!attribute company
      #
      #   @return [String, nil]
      optional :company, String, nil?: true

      # @!attribute created_at
      #   When the account was created, as a Unix timestamp in milliseconds.
      #
      #   @return [Integer, nil]
      optional :created_at, Integer, api_name: :createdAt, nil?: true

      # @!attribute first_name
      #
      #   @return [String, nil]
      optional :first_name, String, api_name: :firstName, nil?: true

      # @!attribute last_name
      #
      #   @return [String, nil]
      optional :last_name, String, api_name: :lastName, nil?: true

      # @!attribute verification_requested_at
      #   When team verification was last requested, as a Unix timestamp in milliseconds.
      #
      #   @return [Integer, nil]
      optional :verification_requested_at, Integer, api_name: :verificationRequestedAt, nil?: true

      # @!method initialize(email:, id:, verification_status:, company: nil, created_at: nil, first_name: nil, last_name: nil, verification_requested_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {GrowsurfRuby::Models::Account} for more details.
      #
      #   @param email [String]
      #
      #   @param id [String] The account's unique identifier.
      #
      #   @param verification_status [Symbol, GrowsurfRuby::Models::Account::VerificationStatus] GrowSurf-team verification state. `VERIFIED` is required before a program can send
      #
      #   @param company [String, nil]
      #
      #   @param created_at [Integer, nil] When the account was created, as a Unix timestamp in milliseconds.
      #
      #   @param first_name [String, nil]
      #
      #   @param last_name [String, nil]
      #
      #   @param verification_requested_at [Integer, nil] When team verification was last requested, as a Unix timestamp in milliseconds.

      # GrowSurf-team verification state. `VERIFIED` is required before a program can
      # send participant emails.
      #
      # @see GrowsurfRuby::Models::Account#verification_status
      module VerificationStatus
        extend GrowsurfRuby::Internal::Type::Enum

        NOT_REQUESTED = :NOT_REQUESTED
        REQUESTED = :REQUESTED
        VERIFIED = :VERIFIED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
