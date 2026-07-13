# frozen_string_literal: true

module GrowsurfRuby
  [GrowsurfRuby::Internal::Type::BaseModel, *GrowsurfRuby::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, GrowsurfRuby::Internal::AnyHash) } }
  end

  GrowsurfRuby::Internal::Util.walk_namespaces(GrowsurfRuby::Models).each do |mod|
    case mod
    in GrowsurfRuby::Internal::Type::Enum | GrowsurfRuby::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  GrowsurfRuby::Internal::Util.walk_namespaces(GrowsurfRuby::Models)
                              .lazy
                              .grep(GrowsurfRuby::Internal::Type::Union)
                              .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AccountCreateParams = GrowsurfRuby::Models::AccountCreateParams

  Team = GrowsurfRuby::Models::Team

  TeamUpdateParams = GrowsurfRuby::Models::TeamUpdateParams

  Campaign = GrowsurfRuby::Models::Campaign

  CampaignAPI = GrowsurfRuby::Models::CampaignAPI

  CampaignCreateMobileParticipantTokenParams =
    GrowsurfRuby::Models::CampaignCreateMobileParticipantTokenParams

  CampaignCreateParams = GrowsurfRuby::Models::CampaignCreateParams

  CampaignListCommissionsParams = GrowsurfRuby::Models::CampaignListCommissionsParams

  CampaignListLeaderboardParams = GrowsurfRuby::Models::CampaignListLeaderboardParams

  CampaignListParams = GrowsurfRuby::Models::CampaignListParams

  CampaignListParticipantsParams = GrowsurfRuby::Models::CampaignListParticipantsParams

  CampaignListPayoutsParams = GrowsurfRuby::Models::CampaignListPayoutsParams

  CampaignListReferralsParams = GrowsurfRuby::Models::CampaignListReferralsParams

  CampaignRetrieveAnalyticsParams = GrowsurfRuby::Models::CampaignRetrieveAnalyticsParams

  CampaignRetrieveParams = GrowsurfRuby::Models::CampaignRetrieveParams

  CampaignUpdateParams = GrowsurfRuby::Models::CampaignUpdateParams

  CommissionStructure = GrowsurfRuby::Models::CommissionStructure

  ParticipantCommissionList = GrowsurfRuby::Models::ParticipantCommissionList

  ParticipantList = GrowsurfRuby::Models::ParticipantList

  ParticipantPayoutList = GrowsurfRuby::Models::ParticipantPayoutList

  ReferralList = GrowsurfRuby::Models::ReferralList

  RewardTaxValuation = GrowsurfRuby::Models::RewardTaxValuation
end
