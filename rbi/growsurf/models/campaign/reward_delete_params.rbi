# typed: strong

module Growsurf
  module Models
    module Campaign
      class RewardDeleteParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Growsurf::Campaign::RewardDeleteParams,
              Growsurf::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :reward_id

        sig do
          params(
            id: String,
            reward_id: String,
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, reward_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              id: String,
              reward_id: String,
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
