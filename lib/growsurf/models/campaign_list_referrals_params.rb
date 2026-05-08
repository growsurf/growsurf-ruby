# frozen_string_literal: true

module Growsurf
  module Models
    # @see Growsurf::Resources::Campaign#list_referrals
    class CampaignListReferralsParams < Growsurf::Internal::Type::BaseModel
      extend Growsurf::Internal::Type::RequestParameters::Converter
      include Growsurf::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute desc
      #   Return results in descending order when true.
      #
      #   @return [Boolean, nil]
      optional :desc, Growsurf::Internal::Type::Boolean

      # @!attribute email
      #   URL-encoded email value to filter referral results.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute first_name
      #   First name value to filter results.
      #
      #   @return [String, nil]
      optional :first_name, String

      # @!attribute last_name
      #   Last name value to filter results.
      #
      #   @return [String, nil]
      optional :last_name, String

      # @!attribute limit
      #   Number of results to return. Maximum 100.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute next_id
      #   ID to start the next paged result set with.
      #
      #   @return [String, nil]
      optional :next_id, String

      # @!attribute offset
      #   Offset number used to skip through a result set.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute referral_status
      #
      #   @return [Symbol, Growsurf::Models::Campaign::ReferralStatus, nil]
      optional :referral_status, enum: -> { Growsurf::Campaign::ReferralStatus }

      # @!attribute sort_by
      #   Field used to sort referral results.
      #
      #   @return [Symbol, Growsurf::Models::CampaignListReferralsParams::SortBy, nil]
      optional :sort_by, enum: -> { Growsurf::CampaignListReferralsParams::SortBy }

      # @!method initialize(id:, desc: nil, email: nil, first_name: nil, last_name: nil, limit: nil, next_id: nil, offset: nil, referral_status: nil, sort_by: nil, request_options: {})
      #   @param id [String]
      #
      #   @param desc [Boolean] Return results in descending order when true.
      #
      #   @param email [String] URL-encoded email value to filter referral results.
      #
      #   @param first_name [String] First name value to filter results.
      #
      #   @param last_name [String] Last name value to filter results.
      #
      #   @param limit [Integer] Number of results to return. Maximum 100.
      #
      #   @param next_id [String] ID to start the next paged result set with.
      #
      #   @param offset [Integer] Offset number used to skip through a result set.
      #
      #   @param referral_status [Symbol, Growsurf::Models::Campaign::ReferralStatus]
      #
      #   @param sort_by [Symbol, Growsurf::Models::CampaignListReferralsParams::SortBy] Field used to sort referral results.
      #
      #   @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}]

      # Field used to sort referral results.
      module SortBy
        extend Growsurf::Internal::Type::Enum

        UPDATED_AT = :updatedAt
        CREATED_AT = :createdAt
        EMAIL = :email
        FIRST_NAME = :firstName
        LAST_NAME = :lastName
        REFERRAL_STATUS = :referralStatus
        REFERRAL_TRIGGERED_AT = :referralTriggeredAt

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
