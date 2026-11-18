# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # A rule that places participants in a group.
      class RewardGroupRule < GrowsurfRuby::Internal::Type::BaseModel
        # `PARTICIPANT` — an existing participant ID; the participant moves in now.
        # `EMAIL` — an exact email address. `DOMAIN` — a company domain such as
        # `hooli.com`, which also matches its subdomains.
        required :type, enum: -> { GrowsurfRuby::Campaign::RewardGroupRule::Type }
        # The participant ID, email address, or domain. 1 to 254 characters.
        required :value, String

        module Type
          extend GrowsurfRuby::Internal::Type::Enum

          PARTICIPANT = :PARTICIPANT
          EMAIL = :EMAIL
          DOMAIN = :DOMAIN
        end
      end

      # A group of participants who earn their own rewards. Its rewards are the
      # Campaign Rewards whose `groupId` is this group's `id`.
      class RewardGroup < GrowsurfRuby::Internal::Type::BaseModel
        # The group ID. Participants, Campaign Rewards, and participant rewards name it
        # as `groupId`.
        required :id, String
        # The group name (internal only, never shown to participants).
        required :name, String
        # The group's position in the program's group list.
        required :order, Integer
        # The rules that place participants in this group.
        required :rules, -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::RewardGroupRule] }
        # The code for this group's signup link. A participant who signs up through the
        # link joins this group.
        required :signup_code, String, api_name: :signupCode
        # When the group was created, in Unix milliseconds.
        required :created_at, Integer, api_name: :createdAt
        # When the group was last changed, in Unix milliseconds.
        required :updated_at, Integer, api_name: :updatedAt
      end
    end
  end
end
