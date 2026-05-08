# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantListRewardsParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::ParticipantListRewardsParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :participant_id_or_email

        # Number of results to return. Maximum 100.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # ID to start the next paged result set with.
        sig { returns(T.nilable(String)) }
        attr_reader :next_id

        sig { params(next_id: String).void }
        attr_writer :next_id

        sig do
          params(
            id: String,
            participant_id_or_email: String,
            limit: Integer,
            next_id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          participant_id_or_email:,
          # Number of results to return. Maximum 100.
          limit: nil,
          # ID to start the next paged result set with.
          next_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              participant_id_or_email: String,
              limit: Integer,
              next_id: String,
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
