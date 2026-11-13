# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # How a participant got into their group. `MANUAL` — a move (a `PARTICIPANT`
      # rule, Update participant, bulk move, or the dashboard), including a move to
      # Default. `LINK` — the group's signup link. `EMAIL` — an `EMAIL` rule.
      # `DOMAIN` — a `DOMAIN` rule.
      module RewardGroupSource
        extend GrowsurfRuby::Internal::Type::Enum

        MANUAL = :MANUAL
        LINK = :LINK
        EMAIL = :EMAIL
        DOMAIN = :DOMAIN

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
