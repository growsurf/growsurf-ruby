# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::CustomDomain#delete
      class DeleteCampaignCustomDomainResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute domain
        #   The custom domain that was removed, such as `https://refer.piedpiper.com`.
        #
        #   @return [String]
        required :domain, String

        # @!attribute success
        #   Whether the custom domain was removed.
        #
        #   @return [Boolean]
        required :success, GrowsurfRuby::Internal::Type::Boolean

        # @!method initialize(domain:, success:)
        #   @param domain [String] The custom domain that was removed, such as `https://refer.piedpiper.com`.
        #
        #   @param success [Boolean] Whether the custom domain was removed.
      end
    end
  end
end
