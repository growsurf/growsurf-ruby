# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # A webhook event name.
      module WebhookEvent
        extend GrowsurfRuby::Internal::Type::Enum

        PARTICIPANT_REACHED_A_GOAL = :PARTICIPANT_REACHED_A_GOAL
        NEW_PARTICIPANT_ADDED = :NEW_PARTICIPANT_ADDED
        CAMPAIGN_ENDED = :CAMPAIGN_ENDED
        PARTICIPANT_FRAUD_STATUS_UPDATED = :PARTICIPANT_FRAUD_STATUS_UPDATED
        NEW_COMMISSION_ADDED = :NEW_COMMISSION_ADDED
        COMMISSION_ADJUSTED = :COMMISSION_ADJUSTED
        NEW_PAYOUT_ISSUED = :NEW_PAYOUT_ISSUED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
