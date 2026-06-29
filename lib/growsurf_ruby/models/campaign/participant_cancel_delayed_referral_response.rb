# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#cancel_delayed_referral
      class ParticipantCancelDelayedReferralResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute success
        #
        #   @return [Boolean]
        required :success, GrowsurfRuby::Internal::Type::Boolean

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(success:, message: nil)
        #   @param success [Boolean]
        #   @param message [String]
      end
    end
  end
end
