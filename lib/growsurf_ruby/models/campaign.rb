# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Campaign#retrieve
    class CampaignAPI < GrowsurfRuby::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute impression_count
      #
      #   @return [Integer]
      required :impression_count, Integer, api_name: :impressionCount

      # @!attribute invite_count
      #
      #   @return [Integer]
      required :invite_count, Integer, api_name: :inviteCount

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute participant_count
      #
      #   @return [Integer]
      required :participant_count, Integer, api_name: :participantCount

      # @!attribute referral_count
      #
      #   @return [Integer]
      required :referral_count, Integer, api_name: :referralCount

      # @!attribute rewards
      #
      #   @return [Array<GrowsurfRuby::Models::CampaignAPI::Reward>]
      required :rewards, -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::CampaignAPI::Reward] }

      # @!attribute status
      #
      #   @return [Symbol, GrowsurfRuby::Models::CampaignAPI::Status]
      required :status, enum: -> { GrowsurfRuby::CampaignAPI::Status }

      # @!attribute type
      #
      #   @return [Symbol, GrowsurfRuby::Models::CampaignAPI::Type]
      required :type, enum: -> { GrowsurfRuby::CampaignAPI::Type }

      # @!attribute winner_count
      #
      #   @return [Integer]
      required :winner_count, Integer, api_name: :winnerCount

      # @!attribute currency_iso
      #
      #   @return [String, nil]
      optional :currency_iso, String, api_name: :currencyISO

      # @!method initialize(id:, impression_count:, invite_count:, name:, participant_count:, referral_count:, rewards:, status:, type:, winner_count:, currency_iso: nil)
      #   @param id [String]
      #   @param impression_count [Integer]
      #   @param invite_count [Integer]
      #   @param name [String]
      #   @param participant_count [Integer]
      #   @param referral_count [Integer]
      #   @param rewards [Array<GrowsurfRuby::Models::CampaignAPI::Reward>]
      #   @param status [Symbol, GrowsurfRuby::Models::CampaignAPI::Status]
      #   @param type [Symbol, GrowsurfRuby::Models::CampaignAPI::Type]
      #   @param winner_count [Integer]
      #   @param currency_iso [String]

      class Reward < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute is_unlimited
        #
        #   @return [Boolean]
        required :is_unlimited, GrowsurfRuby::Internal::Type::Boolean, api_name: :isUnlimited

        # @!attribute metadata
        #   Shallow custom metadata object.
        #
        #   @return [Hash{Symbol=>Object}]
        required :metadata, GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown]

        # @!attribute type
        #
        #   @return [Symbol, GrowsurfRuby::Models::CampaignAPI::Reward::Type]
        required :type, enum: -> { GrowsurfRuby::CampaignAPI::Reward::Type }

        # @!attribute commission_structure
        #
        #   @return [GrowsurfRuby::Models::CommissionStructure, nil]
        optional :commission_structure,
                 -> { GrowsurfRuby::CommissionStructure },
                 api_name: :commissionStructure,
                 nil?: true

        # @!attribute conversions_required
        #
        #   @return [Integer, nil]
        optional :conversions_required, Integer, api_name: :conversionsRequired, nil?: true

        # @!attribute coupon_code
        #
        #   @return [String, nil]
        optional :coupon_code, String, api_name: :couponCode, nil?: true

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute image_url
        #
        #   @return [String, nil]
        optional :image_url, String, api_name: :imageUrl, nil?: true

        # @!attribute limit
        #   `-1` represents an unlimited reward in REST responses.
        #
        #   @return [Integer, nil]
        optional :limit, Integer, nil?: true

        # @!attribute limit_duration
        #
        #   @return [Symbol, GrowsurfRuby::Models::CampaignAPI::Reward::LimitDuration, nil]
        optional :limit_duration,
                 enum: -> { GrowsurfRuby::CampaignAPI::Reward::LimitDuration },
                 api_name: :limitDuration,
                 nil?: true

        # @!attribute next_milestone_prefix
        #
        #   @return [String, nil]
        optional :next_milestone_prefix, String, api_name: :nextMilestonePrefix, nil?: true

        # @!attribute next_milestone_suffix
        #
        #   @return [String, nil]
        optional :next_milestone_suffix, String, api_name: :nextMilestoneSuffix, nil?: true

        # @!attribute number_of_winners
        #
        #   @return [Integer, nil]
        optional :number_of_winners, Integer, api_name: :numberOfWinners, nil?: true

        # @!attribute order
        #
        #   @return [Integer, nil]
        optional :order, Integer, nil?: true

        # @!attribute referral_description
        #
        #   @return [String, nil]
        optional :referral_description, String, api_name: :referralDescription, nil?: true

        # @!attribute referred_reward_upfront
        #
        #   @return [Boolean, nil]
        optional :referred_reward_upfront,
                 GrowsurfRuby::Internal::Type::Boolean,
                 api_name: :referredRewardUpfront

        # @!method initialize(id:, is_unlimited:, metadata:, type:, commission_structure: nil, conversions_required: nil, coupon_code: nil, description: nil, image_url: nil, limit: nil, limit_duration: nil, next_milestone_prefix: nil, next_milestone_suffix: nil, number_of_winners: nil, order: nil, referral_description: nil, referred_reward_upfront: nil)
        #   @param id [String]
        #
        #   @param is_unlimited [Boolean]
        #
        #   @param metadata [Hash{Symbol=>Object}] Shallow custom metadata object.
        #
        #   @param type [Symbol, GrowsurfRuby::Models::CampaignAPI::Reward::Type]
        #
        #   @param commission_structure [GrowsurfRuby::Models::CommissionStructure, nil]
        #
        #   @param conversions_required [Integer, nil]
        #
        #   @param coupon_code [String, nil]
        #
        #   @param description [String, nil]
        #
        #   @param image_url [String, nil]
        #
        #   @param limit [Integer, nil] `-1` represents an unlimited reward in REST responses.
        #
        #   @param limit_duration [Symbol, GrowsurfRuby::Models::CampaignAPI::Reward::LimitDuration, nil]
        #
        #   @param next_milestone_prefix [String, nil]
        #
        #   @param next_milestone_suffix [String, nil]
        #
        #   @param number_of_winners [Integer, nil]
        #
        #   @param order [Integer, nil]
        #
        #   @param referral_description [String, nil]
        #
        #   @param referred_reward_upfront [Boolean]

        # @see GrowsurfRuby::Models::CampaignAPI::Reward#type
        module Type
          extend GrowsurfRuby::Internal::Type::Enum

          SINGLE_SIDED = :SINGLE_SIDED
          DOUBLE_SIDED = :DOUBLE_SIDED
          MILESTONE = :MILESTONE
          LEADERBOARD = :LEADERBOARD
          AFFILIATE = :AFFILIATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see GrowsurfRuby::Models::CampaignAPI::Reward#limit_duration
        module LimitDuration
          extend GrowsurfRuby::Internal::Type::Enum

          IN_TOTAL = :IN_TOTAL
          PER_MONTH = :PER_MONTH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see GrowsurfRuby::Models::CampaignAPI#status
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        DRAFT = :DRAFT
        IN_PROGRESS = :IN_PROGRESS
        COMPLETE = :COMPLETE
        DELETED = :DELETED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see GrowsurfRuby::Models::CampaignAPI#type
      module Type
        extend GrowsurfRuby::Internal::Type::Enum

        REFERRAL = :REFERRAL
        AFFILIATE = :AFFILIATE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
