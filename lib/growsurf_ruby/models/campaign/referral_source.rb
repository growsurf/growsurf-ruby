# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      module ReferralSource
        extend GrowsurfRuby::Internal::Type::Enum

        DIRECT = :DIRECT
        PARTICIPANT = :PARTICIPANT
        DELETED_PARTICIPANT = :DELETED_PARTICIPANT
        IMPORT = :IMPORT
        MANUAL = :MANUAL

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
