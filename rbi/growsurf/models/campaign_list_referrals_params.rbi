# typed: strong

module Growsurf
  module Models
    class CampaignListReferralsParams < Growsurf::Internal::Type::BaseModel
      extend Growsurf::Internal::Type::RequestParameters::Converter
      include Growsurf::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Growsurf::CampaignListReferralsParams,
            Growsurf::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Return results in descending order when true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :desc

      sig { params(desc: T::Boolean).void }
      attr_writer :desc

      # URL-encoded email value to filter referral results.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # First name value to filter results.
      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      # Last name value to filter results.
      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

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

      # Offset number used to skip through a result set.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig { returns(T.nilable(Growsurf::Campaign::ReferralStatus::OrSymbol)) }
      attr_reader :referral_status

      sig do
        params(
          referral_status: Growsurf::Campaign::ReferralStatus::OrSymbol
        ).void
      end
      attr_writer :referral_status

      # Field used to sort referral results.
      sig do
        returns(
          T.nilable(Growsurf::CampaignListReferralsParams::SortBy::OrSymbol)
        )
      end
      attr_reader :sort_by

      sig do
        params(
          sort_by: Growsurf::CampaignListReferralsParams::SortBy::OrSymbol
        ).void
      end
      attr_writer :sort_by

      sig do
        params(
          id: String,
          desc: T::Boolean,
          email: String,
          first_name: String,
          last_name: String,
          limit: Integer,
          next_id: String,
          offset: Integer,
          referral_status: Growsurf::Campaign::ReferralStatus::OrSymbol,
          sort_by: Growsurf::CampaignListReferralsParams::SortBy::OrSymbol,
          request_options: Growsurf::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Return results in descending order when true.
        desc: nil,
        # URL-encoded email value to filter referral results.
        email: nil,
        # First name value to filter results.
        first_name: nil,
        # Last name value to filter results.
        last_name: nil,
        # Number of results to return. Maximum 100.
        limit: nil,
        # ID to start the next paged result set with.
        next_id: nil,
        # Offset number used to skip through a result set.
        offset: nil,
        referral_status: nil,
        # Field used to sort referral results.
        sort_by: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            desc: T::Boolean,
            email: String,
            first_name: String,
            last_name: String,
            limit: Integer,
            next_id: String,
            offset: Integer,
            referral_status: Growsurf::Campaign::ReferralStatus::OrSymbol,
            sort_by: Growsurf::CampaignListReferralsParams::SortBy::OrSymbol,
            request_options: Growsurf::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Field used to sort referral results.
      module SortBy
        extend Growsurf::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Growsurf::CampaignListReferralsParams::SortBy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UPDATED_AT =
          T.let(
            :updatedAt,
            Growsurf::CampaignListReferralsParams::SortBy::TaggedSymbol
          )
        CREATED_AT =
          T.let(
            :createdAt,
            Growsurf::CampaignListReferralsParams::SortBy::TaggedSymbol
          )
        EMAIL =
          T.let(
            :email,
            Growsurf::CampaignListReferralsParams::SortBy::TaggedSymbol
          )
        FIRST_NAME =
          T.let(
            :firstName,
            Growsurf::CampaignListReferralsParams::SortBy::TaggedSymbol
          )
        LAST_NAME =
          T.let(
            :lastName,
            Growsurf::CampaignListReferralsParams::SortBy::TaggedSymbol
          )
        REFERRAL_STATUS =
          T.let(
            :referralStatus,
            Growsurf::CampaignListReferralsParams::SortBy::TaggedSymbol
          )
        REFERRAL_TRIGGERED_AT =
          T.let(
            :referralTriggeredAt,
            Growsurf::CampaignListReferralsParams::SortBy::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Growsurf::CampaignListReferralsParams::SortBy::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
