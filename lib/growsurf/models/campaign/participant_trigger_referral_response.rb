# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      # @see Growsurf::Resources::Campaign::Participant#trigger_referral
      class ParticipantTriggerReferralResponse < Growsurf::Internal::Type::BaseModel
        # @!attribute success
        #
        #   @return [Boolean]
        required :success, Growsurf::Internal::Type::Boolean

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
