# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Participant#trigger_referral
      class ParticipantTriggerReferralParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute participant_id_or_email
        #
        #   @return [String]
        required :participant_id_or_email, String

        # @!attribute delay_in_days
        #   Number of whole days to hold referral credit before it is awarded. Useful for
        #   honoring a refund window before crediting a referrer. Omit this field to award
        #   credit immediately. The credit is awarded automatically once the delay elapses,
        #   and can be cancelled before then with the Cancel delayed referral trigger
        #   request.
        #
        #   @return [Integer, nil]
        optional :delay_in_days, Integer, api_name: :delayInDays

        # @!method initialize(id:, participant_id_or_email:, delay_in_days: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {GrowsurfRuby::Models::Campaign::ParticipantTriggerReferralParams} for more
        #   details.
        #
        #   @param id [String]
        #
        #   @param participant_id_or_email [String]
        #
        #   @param delay_in_days [Integer] Number of whole days to hold referral credit before it is awarded. Useful for
        #
        #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
