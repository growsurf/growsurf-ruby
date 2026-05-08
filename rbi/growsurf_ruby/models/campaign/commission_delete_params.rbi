# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class CommissionDeleteParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::CommissionDeleteParams,
              GrowsurfRuby::Internal::AnyHash
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
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, commission_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              id: String,
              commission_id: String,
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
