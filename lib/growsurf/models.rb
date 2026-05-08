# frozen_string_literal: true

module Growsurf
  [Growsurf::Internal::Type::BaseModel, *Growsurf::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Growsurf::Internal::AnyHash) } }
  end

  Growsurf::Internal::Util.walk_namespaces(Growsurf::Models).each do |mod|
    case mod
    in Growsurf::Internal::Type::Enum | Growsurf::Internal::Type::Union
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

  Growsurf::Internal::Util.walk_namespaces(Growsurf::Models)
                          .lazy
                          .grep(Growsurf::Internal::Type::Union)
                          .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Campaign = Growsurf::Models::Campaign

  CampaignAPI = Growsurf::Models::CampaignAPI

  CampaignListCommissionsParams = Growsurf::Models::CampaignListCommissionsParams

  CampaignListLeaderboardParams = Growsurf::Models::CampaignListLeaderboardParams

  CampaignListParams = Growsurf::Models::CampaignListParams

  CampaignListParticipantsParams = Growsurf::Models::CampaignListParticipantsParams

  CampaignListPayoutsParams = Growsurf::Models::CampaignListPayoutsParams

  CampaignListReferralsParams = Growsurf::Models::CampaignListReferralsParams

  CampaignRetrieveAnalyticsParams = Growsurf::Models::CampaignRetrieveAnalyticsParams

  CampaignRetrieveParams = Growsurf::Models::CampaignRetrieveParams

  CommissionStructure = Growsurf::Models::CommissionStructure

  ParticipantCommissionList = Growsurf::Models::ParticipantCommissionList

  ParticipantList = Growsurf::Models::ParticipantList

  ParticipantPayoutList = Growsurf::Models::ParticipantPayoutList

  ReferralList = Growsurf::Models::ReferralList
end
