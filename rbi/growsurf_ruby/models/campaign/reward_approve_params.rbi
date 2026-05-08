# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class RewardApproveParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::RewardApproveParams,
              GrowsurfRuby::Internal::AnyHash
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
            request_options: GrowsurfRuby::RequestOptions::OrHash
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
              request_options: GrowsurfRuby::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
