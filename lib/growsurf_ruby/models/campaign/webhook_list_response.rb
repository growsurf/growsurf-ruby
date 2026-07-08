# frozen_string_literal: true

module GrowsurfRuby
  module Models
    module Campaign
      # @see GrowsurfRuby::Resources::Campaign::Webhooks#list
      class WebhookListResponse < GrowsurfRuby::Internal::Type::BaseModel
        # @!attribute webhooks
        #
        #   @return [Array<GrowsurfRuby::Models::Campaign::Webhook>]
        required :webhooks, -> { GrowsurfRuby::Internal::Type::ArrayOf[GrowsurfRuby::Campaign::Webhook] }

        # @!method initialize(webhooks:)
        #   @param webhooks [Array<GrowsurfRuby::Models::Campaign::Webhook>]
      end
    end
  end
end
