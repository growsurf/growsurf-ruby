# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantBulkMoveParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(ParticipantBulkMoveParams, GrowsurfRuby::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Array[String]) }
        attr_accessor :participants

        sig { returns(T.nilable(String)) }
        attr_accessor :group_id

        sig do
          params(
            id: String,
            participants: T::Array[String],
            group_id: T.nilable(String),
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, participants:, group_id:, request_options: {})
        end

        sig { override.returns(T::Hash[Symbol, T.anything]) }
        def to_hash
        end
      end
    end
  end
end
