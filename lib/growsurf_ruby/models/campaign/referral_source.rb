# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      module ReferralSource
        extend GrowsurfRuby::Internal::Type::Enum

        DIRECT = :DIRECT
        PARTICIPANT = :PARTICIPANT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
