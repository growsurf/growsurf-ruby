# typed: strong

module GrowsurfRuby
  module Models
    class CampaignListResponse < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::CampaignListResponse,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(T::Array[GrowsurfRuby::CampaignAPI]) }
      attr_accessor :campaigns

      sig do
        params(campaigns: T::Array[GrowsurfRuby::CampaignAPI::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(campaigns:)
      end

      sig do
        override.returns({ campaigns: T::Array[GrowsurfRuby::CampaignAPI] })
      end
      def to_hash
      end
    end
  end
end
