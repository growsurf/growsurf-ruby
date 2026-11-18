# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class RewardGroupCreateParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(RewardGroupCreateParams, GrowsurfRuby::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(T::Array[GrowsurfRuby::Campaign::RewardGroupRule])) }
        attr_reader :rules

        sig { params(rules: T::Array[GrowsurfRuby::Campaign::RewardGroupRule::OrHash]).void }
        attr_writer :rules

        sig do
          params(
            name: String,
            rules: T::Array[GrowsurfRuby::Campaign::RewardGroupRule::OrHash],
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(name:, rules: nil, request_options: {})
        end

        sig { override.returns(T::Hash[Symbol, T.anything]) }
        def to_hash
        end
      end
    end
  end
end
