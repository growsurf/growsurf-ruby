# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::CustomDomain#retrieve
      class CampaignCustomDomain < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute created_at
        #   When the domain was set, in epoch milliseconds. `null` when no domain is set.
        #
        #   @return [Integer, nil]
        required :created_at, Integer, api_name: :createdAt, nil?: true

        # @!attribute dns_record
        #   The DNS record to add at your DNS provider. `null` when no domain is set.
        #
        #   @return [GrowsurfRuby::Models::Campaign::CampaignCustomDomain::DNSRecord, nil]
        required :dns_record,
                 -> { GrowsurfRuby::Campaign::CampaignCustomDomain::DNSRecord },
                 api_name: :dnsRecord,
                 nil?: true

        # @!attribute domain
        #   The custom domain, such as `https://refer.piedpiper.com`, or `null` when none is
        #   set.
        #
        #   @return [String, nil]
        required :domain, String, nil?: true

        # @!attribute is_verified
        #   Whether the domain's `CNAME` record pointed to `dns_record.value` at the last
        #   check. Landing pages load on the domain only when this is `true`.
        #
        #   @return [Boolean]
        required :is_verified, GrowsurfRuby::Internal::Type::Boolean, api_name: :isVerified

        # @!attribute updated_at
        #   When the domain record last changed, in epoch milliseconds. `null` when no
        #   domain is set.
        #
        #   @return [Integer, nil]
        required :updated_at, Integer, api_name: :updatedAt, nil?: true

        # @!attribute verified_at
        #   When the DNS check passed, in epoch milliseconds. `null` while unverified.
        #
        #   @return [Integer, nil]
        required :verified_at, Integer, api_name: :verifiedAt, nil?: true

        # @!method initialize(created_at:, dns_record:, domain:, is_verified:, updated_at:, verified_at:)
        #   The custom domain that serves a program's landing pages.
        #
        #   @param created_at [Integer, nil] When the domain was set, in epoch milliseconds. `null` when no domain is set.
        #
        #   @param dns_record [GrowsurfRuby::Models::Campaign::CampaignCustomDomain::DNSRecord, nil] The DNS record to add at your DNS provider. `null` when no domain is set.
        #
        #   @param domain [String, nil] The custom domain, such as `https://refer.piedpiper.com`, or `null` when none is set.
        #
        #   @param is_verified [Boolean] Whether the domain's `CNAME` record pointed to `dns_record.value` at the last check.
        #
        #   @param updated_at [Integer, nil] When the domain record last changed, in epoch milliseconds. `null` when no domain is set.
        #
        #   @param verified_at [Integer, nil] When the DNS check passed, in epoch milliseconds. `null` while unverified.

        # @see GrowsurfRuby::Models::Campaign::CampaignCustomDomain#dns_record
        class DNSRecord < GrowsurfRuby::Internal::Type::BaseModel
          # @!attribute name
          #   The hostname the record is for, such as `refer.piedpiper.com`.
          #
          #   @return [String]
          required :name, String

          # @!attribute type
          #   The record type. Always `CNAME`.
          #
          #   @return [Symbol, GrowsurfRuby::Models::Campaign::CampaignCustomDomain::DNSRecord::Type]
          required :type, enum: -> { GrowsurfRuby::Campaign::CampaignCustomDomain::DNSRecord::Type }

          # @!attribute value
          #   The record's target, such as `grow.surf`.
          #
          #   @return [String]
          required :value, String

          # @!method initialize(name:, type:, value:)
          #   The DNS record to add at your DNS provider.
          #
          #   @param name [String] The hostname the record is for, such as `refer.piedpiper.com`.
          #
          #   @param type [Symbol, GrowsurfRuby::Models::Campaign::CampaignCustomDomain::DNSRecord::Type] The record type. Always `CNAME`.
          #
          #   @param value [String] The record's target, such as `grow.surf`.

          # The record type. Always `CNAME`.
          #
          # @see GrowsurfRuby::Models::Campaign::CampaignCustomDomain::DNSRecord#type
          module Type
            extend GrowsurfRuby::Internal::Type::Enum

            CNAME = :CNAME

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
