# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantBulkDeleteParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::ParticipantBulkDeleteParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # GrowSurf participant IDs and/or email addresses to delete. Mixed entries are
        # allowed.
        sig { returns(T::Array[String]) }
        attr_accessor :participants

        sig do
          params(
            id: String,
            participants: T::Array[String],
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # GrowSurf participant IDs and/or email addresses to delete. Mixed entries are
          # allowed.
          participants:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              participants: T::Array[String],
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
