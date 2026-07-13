# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Team#resend_owner_verification_email
    class TeamResendOwnerVerificationEmailResponse < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute status
      #   Status of the verification email request.
      #
      #   @return [Symbol, GrowsurfRuby::Models::TeamResendOwnerVerificationEmailResponse::Status]
      required :status, enum: -> { GrowsurfRuby::Models::TeamResendOwnerVerificationEmailResponse::Status }

      # @!attribute success
      #   Whether the verification email request was accepted.
      #
      #   @return [Boolean]
      required :success, GrowsurfRuby::Internal::Type::Boolean

      # @!method initialize(status:, success:)
      #   @param status [Symbol, GrowsurfRuby::Models::TeamResendOwnerVerificationEmailResponse::Status]
      #
      #   @param success [Boolean]

      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        SENT = :SENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
