# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantGetPayoutDestinationResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::ParticipantGetPayoutDestinationResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # The provider that currently gets paid, or null until the participant confirms
        # one.
        sig { returns(T.nilable(String)) }
        attr_accessor :active_provider

        # One entry per enabled payout provider describing the participant's destination
        # for it.
        sig do
          returns(
            T::Array[
              GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination
            ]
          )
        end
        attr_reader :destinations

        sig do
          params(
            destinations:
              T::Array[
                GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination::OrHash
              ]
          ).void
        end
        attr_writer :destinations

        # The payout providers enabled for this program.
        sig do
          returns(T::Array[String])
        end
        attr_reader :enabled_providers

        sig do
          params(
            enabled_providers:
              T::Array[String]
          ).void
        end
        attr_writer :enabled_providers

        sig do
          params(
            active_provider: T.nilable(String),
            destinations:
              T::Array[
                GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination::OrHash
              ],
            enabled_providers: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The provider that currently gets paid, or null until the participant confirms
          # one.
          active_provider:,
          # One entry per enabled payout provider describing the participant's destination
          # for it.
          destinations:,
          # The payout providers enabled for this program.
          enabled_providers:
        )
        end

        sig do
          override.returns(
            {
              active_provider: T.nilable(String),
              destinations:
                T::Array[
                  GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination
                ],
              enabled_providers: T::Array[String]
            }
          )
        end
        def to_hash
        end

        class Destination < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination,
                GrowsurfRuby::Internal::AnyHash
              )
            end

          # The confirmed payout email for this provider.
          sig { returns(T.nilable(String)) }
          attr_accessor :claim_email

          # When the destination was confirmed, as a Unix timestamp in milliseconds.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :confirmed_at

          # The legal recipient type the participant confirmed, if any.
          sig do
            returns(
              T.nilable(
                GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination::LegalEntityType::TaggedSymbol
              )
            )
          end
          attr_accessor :legal_entity_type

          # When status is `NEEDS_REPAIR`, why (e.g. a bounced delivery).
          sig { returns(T.nilable(String)) }
          attr_accessor :needs_repair_reason

          # The payout provider this entry describes.
          sig { returns(String) }
          attr_reader :provider

          sig { params(provider: String).void }
          attr_writer :provider

          # The customer-facing provider name (e.g. "PayPal", "Wise").
          sig { returns(String) }
          attr_reader :provider_display_name

          sig { params(provider_display_name: String).void }
          attr_writer :provider_display_name

          # The destination's current status: `NONE` (not set up), `PENDING_CONFIRMATION`,
          # `CONFIRMED`, `ACTIVE`, `NEEDS_REPAIR`, or `EXPIRED`. Historical superseded
          # or revoked destinations are projected as `NONE`.
          sig { returns(String) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig do
            params(
              claim_email: T.nilable(String),
              confirmed_at: T.nilable(Integer),
              legal_entity_type:
                T.nilable(
                  GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination::LegalEntityType::OrSymbol
                ),
              needs_repair_reason: T.nilable(String),
              provider: String,
              provider_display_name: String,
              status: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The confirmed payout email for this provider.
            claim_email:,
            # When the destination was confirmed, as a Unix timestamp in milliseconds.
            confirmed_at:,
            # The legal recipient type the participant confirmed, if any.
            legal_entity_type:,
            # When status is `NEEDS_REPAIR`, why (e.g. a bounced delivery).
            needs_repair_reason:,
            # The payout provider this entry describes.
            provider:,
            # The customer-facing provider name (e.g. "PayPal", "Wise").
            provider_display_name:,
            # The destination's current status: `NONE` (not set up), `PENDING_CONFIRMATION`,
            # `CONFIRMED`, `ACTIVE`, `NEEDS_REPAIR`, or `EXPIRED`. Historical superseded
            # or revoked destinations are projected as `NONE`.
            status:
          )
          end

          sig do
            override.returns(
              {
                claim_email: T.nilable(String),
                confirmed_at: T.nilable(Integer),
                legal_entity_type:
                  T.nilable(
                    GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination::LegalEntityType::TaggedSymbol
                  ),
                needs_repair_reason: T.nilable(String),
                provider: String,
                provider_display_name: String,
                status: String
              }
            )
          end
          def to_hash
          end

          # The legal recipient type the participant confirmed, if any.
          module LegalEntityType
            extend GrowsurfRuby::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination::LegalEntityType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INDIVIDUAL =
              T.let(
                :INDIVIDUAL,
                GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination::LegalEntityType::TaggedSymbol
              )
            BUSINESS =
              T.let(
                :BUSINESS,
                GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination::LegalEntityType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  GrowsurfRuby::Campaign::ParticipantGetPayoutDestinationResponse::Destination::LegalEntityType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
