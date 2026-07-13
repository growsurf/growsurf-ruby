# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Account#create
    class AccountCreateResponse < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute api_key
      #   An API key for the new account. Use it as the `Bearer` token on subsequent
      #   requests. Locked (`403` `EMAIL_NOT_VERIFIED_ERROR`) until the account's email
      #   is verified, and rotated when the account owner first signs in to the GrowSurf
      #   dashboard.
      #
      #   @return [String]
      required :api_key, String, api_name: :apiKey

      # @!attribute email
      #   Email address for the new account.
      #
      #   @return [String]
      required :email, String

      # @!attribute verification_status
      #   GrowSurf team verification state. `VERIFIED` is required before a program
      #   can send participant emails.
      #
      #   @return [Symbol, GrowsurfRuby::Models::AccountCreateResponse::VerificationStatus]
      required :verification_status,
               enum: -> { GrowsurfRuby::Models::AccountCreateResponse::VerificationStatus },
               api_name: :verificationStatus

      # @!method initialize(api_key:, email:, verification_status:)
      #   Some parameter documentations has been truncated, see
      #   {GrowsurfRuby::Models::AccountCreateResponse} for more details.
      #
      #   @param api_key [String] An API key for the new account. Use it as the `Bearer` token on subsequent
      #
      #   @param email [String]
      #
      #   @param verification_status [Symbol, GrowsurfRuby::Models::AccountCreateResponse::VerificationStatus] GrowSurf team verification state. `VERIFIED` is required before a program can

      # GrowSurf team verification state. `VERIFIED` is required before a program
      # can send participant emails.
      #
      # @see GrowsurfRuby::Models::AccountCreateResponse#verification_status
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
