# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      # A language a program can run in. Participants see the portal and receive
      # program emails in their language.
      module Language
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, GrowsurfRuby::Campaign::Language) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EN = T.let(:en, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        ES = T.let(:es, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        FR = T.let(:fr, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        DE = T.let(:de, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        IT = T.let(:it, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        PT_BR = T.let(:"pt-BR", GrowsurfRuby::Campaign::Language::TaggedSymbol)
        NL = T.let(:nl, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        PL = T.let(:pl, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        SV = T.let(:sv, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        TR = T.let(:tr, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        JA = T.let(:ja, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        KO = T.let(:ko, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        ZH_CN = T.let(:"zh-CN", GrowsurfRuby::Campaign::Language::TaggedSymbol)
        ID = T.let(:id, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        DA = T.let(:da, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        NB = T.let(:nb, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        NN = T.let(:nn, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        FI = T.let(:fi, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        IS = T.let(:is, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        CS = T.let(:cs, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        SK = T.let(:sk, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        HU = T.let(:hu, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        RO = T.let(:ro, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        HR = T.let(:hr, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        SL = T.let(:sl, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        ET = T.let(:et, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        LV = T.let(:lv, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        LT = T.let(:lt, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        EL = T.let(:el, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        BG = T.let(:bg, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        UK = T.let(:uk, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        RU = T.let(:ru, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        PT_PT = T.let(:"pt-PT", GrowsurfRuby::Campaign::Language::TaggedSymbol)
        CA = T.let(:ca, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        VI = T.let(:vi, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        MS = T.let(:ms, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        FIL = T.let(:fil, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        AF = T.let(:af, GrowsurfRuby::Campaign::Language::TaggedSymbol)
        SW = T.let(:sw, GrowsurfRuby::Campaign::Language::TaggedSymbol)

        sig do
          override.returns(
            T::Array[GrowsurfRuby::Campaign::Language::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
