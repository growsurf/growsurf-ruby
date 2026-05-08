# typed: strong

module Growsurf
  module Models
    module Campaign
      class CommissionApproveParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Growsurf::Campaign::CommissionApproveParams,
              Growsurf::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :commission_id

        sig do
          params(
            id: String,
            commission_id: String,
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, commission_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              id: String,
              commission_id: String,
              request_options: Growsurf::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
