# typed: strong

module Growsurf
  module Models
    class CampaignRetrieveParams < Growsurf::Internal::Type::BaseModel
      extend Growsurf::Internal::Type::RequestParameters::Converter
      include Growsurf::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Growsurf::CampaignRetrieveParams, Growsurf::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig do
        params(
          id: String,
          request_options: Growsurf::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(id:, request_options: {})
      end

      sig do
        override.returns(
          { id: String, request_options: Growsurf::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
