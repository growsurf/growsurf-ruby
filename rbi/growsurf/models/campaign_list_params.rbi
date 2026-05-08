# typed: strong

module Growsurf
  module Models
    class CampaignListParams < Growsurf::Internal::Type::BaseModel
      extend Growsurf::Internal::Type::RequestParameters::Converter
      include Growsurf::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Growsurf::CampaignListParams, Growsurf::Internal::AnyHash)
        end

      sig do
        params(request_options: Growsurf::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Growsurf::RequestOptions }) }
      def to_hash
      end
    end
  end
end
