# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # A language a program can run in. Participants see the portal and receive
      # program emails in their language.
      module Language
        extend GrowsurfRuby::Internal::Type::Enum

        EN = :en
        ES = :es
        FR = :fr
        DE = :de
        IT = :it
        PT_BR = :"pt-BR"
        NL = :nl
        PL = :pl
        SV = :sv
        TR = :tr
        JA = :ja
        KO = :ko
        ZH_CN = :"zh-CN"
        ID = :id

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
