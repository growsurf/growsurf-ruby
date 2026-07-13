# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Team#retrieve
    class Team < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute name
      #   The team's display name.
      #
      #   @return [String]
      required :name, String

      # @!attribute verification_status
      #   GrowSurf team verification state. `VERIFIED` is required before a program can
      #   send participant emails.
      #
      #   @return [Symbol, GrowsurfRuby::Models::Team::VerificationStatus]
      required :verification_status,
               enum: -> { GrowsurfRuby::Models::Team::VerificationStatus },
               api_name: :verificationStatus

      # @!attribute verification_requested_at
      #   When team verification was last requested, as a Unix timestamp in milliseconds.
      #
      #   @return [Integer, nil]
      required :verification_requested_at, Integer, api_name: :verificationRequestedAt, nil?: true

      # @!method initialize(name:, verification_status:, verification_requested_at:)
      #   @param name [String] The team's display name.
      #
      #   @param verification_status [Symbol, GrowsurfRuby::Models::Team::VerificationStatus] GrowSurf team verification state.
      #
      #   @param verification_requested_at [Integer, nil] When team verification was last requested, as a Unix timestamp in milliseconds.

      # GrowSurf team verification state.
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
