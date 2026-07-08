# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      # A webhook event name.
      module WebhookEvent
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, GrowsurfRuby::Campaign::WebhookEvent) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PARTICIPANT_REACHED_A_GOAL =
          T.let(
            :PARTICIPANT_REACHED_A_GOAL,
            GrowsurfRuby::Campaign::WebhookEvent::TaggedSymbol
          )
        NEW_PARTICIPANT_ADDED =
          T.let(
            :NEW_PARTICIPANT_ADDED,
            GrowsurfRuby::Campaign::WebhookEvent::TaggedSymbol
          )
        CAMPAIGN_ENDED =
          T.let(
            :CAMPAIGN_ENDED,
            GrowsurfRuby::Campaign::WebhookEvent::TaggedSymbol
          )
        PARTICIPANT_FRAUD_STATUS_UPDATED =
          T.let(
            :PARTICIPANT_FRAUD_STATUS_UPDATED,
            GrowsurfRuby::Campaign::WebhookEvent::TaggedSymbol
          )
        NEW_COMMISSION_ADDED =
          T.let(
            :NEW_COMMISSION_ADDED,
            GrowsurfRuby::Campaign::WebhookEvent::TaggedSymbol
          )
        COMMISSION_ADJUSTED =
          T.let(
            :COMMISSION_ADJUSTED,
            GrowsurfRuby::Campaign::WebhookEvent::TaggedSymbol
          )
        NEW_PAYOUT_ISSUED =
          T.let(
            :NEW_PAYOUT_ISSUED,
            GrowsurfRuby::Campaign::WebhookEvent::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[GrowsurfRuby::Campaign::WebhookEvent::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
