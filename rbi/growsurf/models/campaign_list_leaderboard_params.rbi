# typed: strong

module Growsurf
  module Models
    class CampaignListLeaderboardParams < Growsurf::Internal::Type::BaseModel
      extend Growsurf::Internal::Type::RequestParameters::Converter
      include Growsurf::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Growsurf::CampaignListLeaderboardParams,
            Growsurf::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Deprecated. Use `leaderboardType=CURRENT_MONTH` instead.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_monthly

      sig { params(is_monthly: T::Boolean).void }
      attr_writer :is_monthly

      # Leaderboard ordering mode.
      sig do
        returns(
          T.nilable(
            Growsurf::CampaignListLeaderboardParams::LeaderboardType::OrSymbol
          )
        )
      end
      attr_reader :leaderboard_type

      sig do
        params(
          leaderboard_type:
            Growsurf::CampaignListLeaderboardParams::LeaderboardType::OrSymbol
        ).void
      end
      attr_writer :leaderboard_type

      # Number of results to return. Maximum 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # ID to start the next paged result set with.
      sig { returns(T.nilable(String)) }
      attr_reader :next_id

      sig { params(next_id: String).void }
      attr_writer :next_id

      sig do
        params(
          id: String,
          is_monthly: T::Boolean,
          leaderboard_type:
            Growsurf::CampaignListLeaderboardParams::LeaderboardType::OrSymbol,
          limit: Integer,
          next_id: String,
          request_options: Growsurf::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Deprecated. Use `leaderboardType=CURRENT_MONTH` instead.
        is_monthly: nil,
        # Leaderboard ordering mode.
        leaderboard_type: nil,
        # Number of results to return. Maximum 100.
        limit: nil,
        # ID to start the next paged result set with.
        next_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            is_monthly: T::Boolean,
            leaderboard_type:
              Growsurf::CampaignListLeaderboardParams::LeaderboardType::OrSymbol,
            limit: Integer,
            next_id: String,
            request_options: Growsurf::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Leaderboard ordering mode.
      module LeaderboardType
        extend Growsurf::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Growsurf::CampaignListLeaderboardParams::LeaderboardType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL_TIME =
          T.let(
            :ALL_TIME,
            Growsurf::CampaignListLeaderboardParams::LeaderboardType::TaggedSymbol
          )
        CURRENT_MONTH =
          T.let(
            :CURRENT_MONTH,
            Growsurf::CampaignListLeaderboardParams::LeaderboardType::TaggedSymbol
          )
        PREV_MONTH =
          T.let(
            :PREV_MONTH,
            Growsurf::CampaignListLeaderboardParams::LeaderboardType::TaggedSymbol
          )
        TOTAL_IMPRESSION_COUNT =
          T.let(
            :TOTAL_IMPRESSION_COUNT,
            Growsurf::CampaignListLeaderboardParams::LeaderboardType::TaggedSymbol
          )
        UNIQUE_IMPRESSION_COUNT =
          T.let(
            :UNIQUE_IMPRESSION_COUNT,
            Growsurf::CampaignListLeaderboardParams::LeaderboardType::TaggedSymbol
          )
        BY_COMMISSIONS =
          T.let(
            :BY_COMMISSIONS,
            Growsurf::CampaignListLeaderboardParams::LeaderboardType::TaggedSymbol
          )
        BY_REVENUE =
          T.let(
            :BY_REVENUE,
            Growsurf::CampaignListLeaderboardParams::LeaderboardType::TaggedSymbol
          )
        BY_REFERRALS =
          T.let(
            :BY_REFERRALS,
            Growsurf::CampaignListLeaderboardParams::LeaderboardType::TaggedSymbol
          )
        BY_LEADS =
          T.let(
            :BY_LEADS,
            Growsurf::CampaignListLeaderboardParams::LeaderboardType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Growsurf::CampaignListLeaderboardParams::LeaderboardType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
