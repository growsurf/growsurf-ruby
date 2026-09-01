# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantActivationAnalytics < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::ParticipantActivationAnalytics,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_accessor :coverage_start_at, :enrolled_as_advocate_at

        sig { returns(Integer) }
        attr_accessor :metric_contract_version

        sig { returns(ProgramType::OrSymbol) }
        attr_accessor :program_type

        sig { returns(GrowsurfRuby::Models::AnalyticsAvailability::OrSymbol) }
        attr_accessor :state

        sig do
          returns(
            T.nilable(
              GrowsurfRuby::Models::AnalyticsUnavailableReason::OrSymbol
            )
          )
        end
        attr_accessor :reason

        sig { returns(Cohort) }
        attr_accessor :cohort

        sig { returns(Milestones) }
        attr_accessor :milestones

        sig { params(kwargs: T.untyped).returns(T.attached_class) }
        def self.new(**kwargs)
        end

        module ProgramType
          extend GrowsurfRuby::Internal::Type::Enum

          OrSymbol = T.type_alias { T.any(Symbol, String) }
          REFERRAL = T.let(:REFERRAL, Symbol)
          AFFILIATE = T.let(:AFFILIATE, Symbol)
          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        module AnchorField
          extend GrowsurfRuby::Internal::Type::Enum

          OrSymbol = T.type_alias { T.any(Symbol, String) }
          ENROLLED_AS_ADVOCATE_AT = T.let(:enrolledAsAdvocateAt, Symbol)
          APPROVED_AS_AFFILIATE_AT = T.let(:approvedAsAffiliateAt, Symbol)
          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        module ShareChannel
          extend GrowsurfRuby::Internal::Type::Enum

          OrSymbol = T.type_alias { T.any(Symbol, String) }
          EMAIL = T.let(:email, Symbol)
          FACEBOOK = T.let(:facebook, Symbol)
          TWITTER = T.let(:twitter, Symbol)
          LINKEDIN = T.let(:linkedin, Symbol)
          PINTEREST = T.let(:pinterest, Symbol)
          THREADS = T.let(:threads, Symbol)
          BLUESKY = T.let(:bluesky, Symbol)
          SMS = T.let(:sms, Symbol)
          MESSENGER = T.let(:messenger, Symbol)
          WHATSAPP = T.let(:whatsapp, Symbol)
          WECHAT = T.let(:wechat, Symbol)
          TELEGRAM = T.let(:telegram, Symbol)
          REDDIT = T.let(:reddit, Symbol)
          TUMBLR = T.let(:tumblr, Symbol)
          QRCODE = T.let(:qrcode, Symbol)
          COPY_REF_LINK = T.let(:copyRefLink, Symbol)
          IOS_NATIVE_SHARE = T.let(:iosNativeShare, Symbol)
          ANDROID_NATIVE_SHARE = T.let(:androidNativeShare, Symbol)
          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Cohort < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(Cohort, GrowsurfRuby::Internal::AnyHash) }
          sig { returns(AnchorField::OrSymbol) }
          attr_accessor :anchor_field

          sig { returns(T.nilable(Integer)) }
          attr_accessor :anchor_at

          sig { params(kwargs: T.untyped).returns(T.attached_class) }
          def self.new(**kwargs)
          end
        end

        class Milestones < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(Milestones, GrowsurfRuby::Internal::AnyHash) }
          sig { returns(T.nilable(Integer)) }
          attr_accessor :first_portal_viewed_at,
                        :first_referral_link_copied_at,
                        :first_share_at,
                        :first_unique_click_at,
                        :first_lead_at,
                        :first_referral_at,
                        :first_reward_at,
                        :first_commission_at,
                        :payout_setup_completed_at

          sig { returns(T.nilable(ShareChannel::OrSymbol)) }
          attr_accessor :first_share_channel

          sig { params(kwargs: T.untyped).returns(T.attached_class) }
          def self.new(**kwargs)
          end
        end
      end
    end
  end
end
