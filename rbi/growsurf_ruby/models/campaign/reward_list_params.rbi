# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class RewardListParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(RewardListParams, GrowsurfRuby::Internal::AnyHash)
          end

        # Return only this group's rewards. To get Default's rewards, omit `groupId`
        # and keep the rewards whose `groupId` is `null`. An ID that is not a group in this program
        # returns `404`.
        sig { returns(T.nilable(String)) }
        attr_reader :group_id

        sig { params(group_id: String).void }
        attr_writer :group_id

        sig do
          params(
            group_id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(group_id: nil, request_options: {})
        end

        sig do
          override.returns(
            { group_id: String, request_options: GrowsurfRuby::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
