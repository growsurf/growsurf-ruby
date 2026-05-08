# typed: strong

module Growsurf
  module Models
    module Campaign
      class RewardApproveParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Growsurf::Campaign::RewardApproveParams,
              Growsurf::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :reward_id

        # Set true to mark the reward as fulfilled after approval.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :fulfill

        sig { params(fulfill: T::Boolean).void }
        attr_writer :fulfill

        sig do
          params(
            id: String,
            reward_id: String,
            fulfill: T::Boolean,
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          reward_id:,
          # Set true to mark the reward as fulfilled after approval.
          fulfill: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              reward_id: String,
              fulfill: T::Boolean,
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
