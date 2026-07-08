# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantActivityLogsResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::ParticipantActivityLogsResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              GrowsurfRuby::Campaign::ParticipantActivityLogsResponse::ActivityLog
            ]
          )
        end
        attr_accessor :activity_logs

        sig { returns(Integer) }
        attr_accessor :limit

        # The offset for the next page, or null when there are no more logs.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :offset

        sig do
          params(
            activity_logs:
              T::Array[
                GrowsurfRuby::Campaign::ParticipantActivityLogsResponse::ActivityLog::OrHash
              ],
            limit: Integer,
            offset: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          activity_logs:,
          limit:,
          # The offset for the next page, or null when there are no more logs.
          offset: nil
        )
        end

        sig do
          override.returns(
            {
              activity_logs:
                T::Array[
                  GrowsurfRuby::Campaign::ParticipantActivityLogsResponse::ActivityLog
                ],
              limit: Integer,
              offset: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end

        class ActivityLog < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                GrowsurfRuby::Campaign::ParticipantActivityLogsResponse::ActivityLog,
                GrowsurfRuby::Internal::AnyHash
              )
            end

          # When the activity occurred, as a Unix timestamp in milliseconds.
          sig { returns(Integer) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :text

          # The activity family (e.g. `REFERRAL`, `SHARE`, `REWARD`, `EMAIL`, `COMMON`).
          sig { returns(String) }
          attr_accessor :type

          sig do
            params(
              created_at: Integer,
              text: String,
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # When the activity occurred, as a Unix timestamp in milliseconds.
            created_at:,
            text:,
            # The activity family (e.g. `REFERRAL`, `SHARE`, `REWARD`, `EMAIL`, `COMMON`).
            type:
          )
          end

          sig do
            override.returns(
              { created_at: Integer, text: String, type: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
