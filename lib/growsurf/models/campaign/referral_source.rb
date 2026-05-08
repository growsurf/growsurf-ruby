# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      module ReferralSource
        extend Growsurf::Internal::Type::Enum

        DIRECT = :DIRECT
        PARTICIPANT = :PARTICIPANT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
