# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      module ReferralStatus
        extend GrowsurfRuby::Internal::Type::Enum

        CREDIT_PENDING = :CREDIT_PENDING
        CREDIT_AWARDED = :CREDIT_AWARDED
        CREDIT_EXPIRED = :CREDIT_EXPIRED
        INVITE_SENT = :INVITE_SENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
