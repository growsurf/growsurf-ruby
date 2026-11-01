# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class CampaignCustomDomain < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::CampaignCustomDomain,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # When the domain was set, in epoch milliseconds. `null` when no domain is set.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :created_at

        # The DNS record to add at your DNS provider. `null` when no domain is set.
        sig do
          returns(T.nilable(GrowsurfRuby::Campaign::CampaignCustomDomain::DNSRecord))
        end
        attr_reader :dns_record

        sig do
          params(
            dns_record:
              T.nilable(
                GrowsurfRuby::Campaign::CampaignCustomDomain::DNSRecord::OrHash
              )
          ).void
        end
        attr_writer :dns_record

        # The custom domain, such as `https://refer.piedpiper.com`, or `null` when none is
        # set.
        sig { returns(T.nilable(String)) }
        attr_accessor :domain

        # Whether the domain's `CNAME` record pointed to `dns_record.value` at the last
        # check. Landing pages load on the domain only when this is `true`.
        sig { returns(T::Boolean) }
        attr_accessor :is_verified

        # When the domain record last changed, in epoch milliseconds. `null` when no
        # domain is set.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :updated_at

        # When the DNS check passed, in epoch milliseconds. `null` while unverified.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :verified_at

        # The custom domain that serves a program's landing pages.
        sig do
          params(
            created_at: T.nilable(Integer),
            dns_record:
              T.nilable(
                GrowsurfRuby::Campaign::CampaignCustomDomain::DNSRecord::OrHash
              ),
            domain: T.nilable(String),
            is_verified: T::Boolean,
            updated_at: T.nilable(Integer),
            verified_at: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # When the domain was set, in epoch milliseconds. `null` when no domain is set.
          created_at:,
          # The DNS record to add at your DNS provider. `null` when no domain is set.
          dns_record:,
          # The custom domain, such as `https://refer.piedpiper.com`, or `null` when none is
          # set.
          domain:,
          # Whether the domain's `CNAME` record pointed to `dns_record.value` at the last
          # check. Landing pages load on the domain only when this is `true`.
          is_verified:,
          # When the domain record last changed, in epoch milliseconds. `null` when no
          # domain is set.
          updated_at:,
          # When the DNS check passed, in epoch milliseconds. `null` while unverified.
          verified_at:
        )
        end

        sig do
          override.returns(
            {
              created_at: T.nilable(Integer),
              dns_record:
                T.nilable(GrowsurfRuby::Campaign::CampaignCustomDomain::DNSRecord),
              domain: T.nilable(String),
              is_verified: T::Boolean,
              updated_at: T.nilable(Integer),
              verified_at: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end

        class DNSRecord < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                GrowsurfRuby::Campaign::CampaignCustomDomain::DNSRecord,
                GrowsurfRuby::Internal::AnyHash
              )
            end

          # The hostname the record is for, such as `refer.piedpiper.com`.
          sig { returns(String) }
          attr_accessor :name

          # The record type. Always `CNAME`.
          sig do
            returns(
              GrowsurfRuby::Campaign::CampaignCustomDomain::DNSRecord::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # The record's target, such as `grow.surf`.
          sig { returns(String) }
          attr_accessor :value

          # The DNS record to add at your DNS provider.
          sig do
            params(
              name: String,
              type:
                GrowsurfRuby::Campaign::CampaignCustomDomain::DNSRecord::Type::OrSymbol,
              value: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The hostname the record is for, such as `refer.piedpiper.com`.
            name:,
            # The record type. Always `CNAME`.
            type:,
            # The record's target, such as `grow.surf`.
            value:
          )
          end

          sig do
            override.returns(
              {
                name: String,
                type:
                  GrowsurfRuby::Campaign::CampaignCustomDomain::DNSRecord::Type::TaggedSymbol,
                value: String
              }
            )
          end
          def to_hash
          end

          # The record type. Always `CNAME`.
          module Type
            extend GrowsurfRuby::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  GrowsurfRuby::Campaign::CampaignCustomDomain::DNSRecord::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CNAME =
              T.let(
                :CNAME,
                GrowsurfRuby::Campaign::CampaignCustomDomain::DNSRecord::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  GrowsurfRuby::Campaign::CampaignCustomDomain::DNSRecord::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
