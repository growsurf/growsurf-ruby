# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#list_activity_logs
      class ParticipantActivityLogsResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute activity_logs
        #
        #   @return [Array<GrowsurfRuby::Models::Campaign::ParticipantActivityLogsResponse::ActivityLog>]
        required :activity_logs,
                 -> {
                   GrowsurfRuby::Internal::Type::ArrayOf[
                     GrowsurfRuby::Campaign::ParticipantActivityLogsResponse::ActivityLog
                   ]
                 },
                 api_name: :activityLogs

        # @!attribute limit
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute offset
        #   The offset for the next page, or null when there are no more logs.
        #
        #   @return [Integer, nil]
        optional :offset, Integer, nil?: true

        # @!method initialize(activity_logs:, limit:, offset: nil)
        #   @param activity_logs [Array<GrowsurfRuby::Models::Campaign::ParticipantActivityLogsResponse::ActivityLog>]
        #
        #   @param limit [Integer]
        #
        #   @param offset [Integer, nil] The offset for the next page, or null when there are no more logs.

        class ActivityLog < GrowsurfRuby::Internal::Type::BaseModel
          # @!attribute created_at
          #   When the activity occurred, as a Unix timestamp in milliseconds.
          #
          #   @return [Integer]
          required :created_at, Integer, api_name: :createdAt

          # @!attribute text
          #
          #   @return [String]
          required :text, String

          # @!attribute type
          #   The activity family (e.g. `REFERRAL`, `SHARE`, `REWARD`, `EMAIL`, `COMMON`).
          #
          #   @return [String]
          required :type, String

          # @!method initialize(created_at:, text:, type:)
          #   @param created_at [Integer] When the activity occurred, as a Unix timestamp in milliseconds.
          #
          #   @param text [String]
          #
          #   @param type [String] The activity family (e.g. `REFERRAL`, `SHARE`, `REWARD`, `EMAIL`, `COMMON`).
        end
      end
    end
  end
end
