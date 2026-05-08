# frozen_string_literal: true

module Growsurf
  module Models
    module Campaign
      # @see Growsurf::Resources::Campaign::Participant#delete
      class ParticipantDeleteParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute participant_id_or_email
        #
        #   @return [String]
        required :participant_id_or_email, String

        # @!method initialize(id:, participant_id_or_email:, request_options: {})
        #   @param id [String]
        #   @param participant_id_or_email [String]
        #   @param request_options [Growsurf::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
