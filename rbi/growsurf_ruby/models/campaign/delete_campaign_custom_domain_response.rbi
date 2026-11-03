# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class DeleteCampaignCustomDomainResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::DeleteCampaignCustomDomainResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # The custom domain that was removed, such as `https://refer.piedpiper.com`.
        sig { returns(String) }
        attr_accessor :domain

        # Whether the custom domain was removed.
        sig { returns(T::Boolean) }
        attr_accessor :success

        sig do
          params(domain: String, success: T::Boolean).returns(T.attached_class)
        end
        def self.new(
          # The custom domain that was removed, such as `https://refer.piedpiper.com`.
          domain:,
          # Whether the custom domain was removed.
          success:
        )
        end

        sig { override.returns({ domain: String, success: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
