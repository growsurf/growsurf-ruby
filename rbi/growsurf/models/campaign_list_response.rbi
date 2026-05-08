# typed: strong

module Growsurf
  module Models
    class CampaignListResponse < Growsurf::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Growsurf::Models::CampaignListResponse,
            Growsurf::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Growsurf::CampaignAPI]) }
      attr_accessor :campaigns

      sig do
        params(campaigns: T::Array[Growsurf::CampaignAPI::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(campaigns:)
      end

      sig { override.returns({ campaigns: T::Array[Growsurf::CampaignAPI] }) }
      def to_hash
      end
    end
  end
end
