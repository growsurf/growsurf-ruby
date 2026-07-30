# typed: strong

module GrowsurfRuby
  module Models
    class CampaignResendAffiliateInviteParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CampaignResendAffiliateInviteParams,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :invite_id

      sig do
        params(
          id: String,
          invite_id: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(id:, invite_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            id: String,
            invite_id: String,
            request_options: GrowsurfRuby::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
