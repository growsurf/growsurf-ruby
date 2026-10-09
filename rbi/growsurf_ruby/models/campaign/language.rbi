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
