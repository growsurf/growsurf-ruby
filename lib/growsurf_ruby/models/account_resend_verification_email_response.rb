# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Account#resend_verification_email
    class AccountResendVerificationEmailResponse < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, GrowsurfRuby::Models::AccountResendVerificationEmailResponse::Status]
      required :status, enum: -> { GrowsurfRuby::Models::AccountResendVerificationEmailResponse::Status }

      # @!attribute success
      #
      #   @return [Boolean]
      required :success, GrowsurfRuby::Internal::Type::Boolean

      # @!method initialize(status:, success:)
      #   @param status [Symbol, GrowsurfRuby::Models::AccountResendVerificationEmailResponse::Status]
      #
      #   @param success [Boolean]

      # @see GrowsurfRuby::Models::AccountResendVerificationEmailResponse#status
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        SENT = :SENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
