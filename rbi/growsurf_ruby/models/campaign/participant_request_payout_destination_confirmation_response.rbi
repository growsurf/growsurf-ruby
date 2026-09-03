# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantRequestPayoutDestinationConfirmationResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::ParticipantRequestPayoutDestinationConfirmationResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # When the confirmation link expires, as a Unix timestamp in milliseconds.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expires_at

        # The provider the participant was asked to confirm.
        sig { returns(String) }
        attr_reader :provider

        sig { params(provider: String).void }
        attr_writer :provider

        # The customer-facing provider name (e.g. "PayPal", "Wise").
        sig { returns(String) }
        attr_reader :provider_display_name

        sig { params(provider_display_name: String).void }
        attr_writer :provider_display_name

        # Confirms the message was requested.
        sig do
          returns(
            GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationResponse::Status::OrSymbol
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationResponse::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            expires_at: T.nilable(Integer),
            provider: String,
            provider_display_name: String,
            status:
              GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationResponse::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # When the confirmation link expires, as a Unix timestamp in milliseconds.
          expires_at:,
          # The provider the participant was asked to confirm.
          provider:,
          # The customer-facing provider name (e.g. "PayPal", "Wise").
          provider_display_name:,
          # Confirms the message was requested.
          status:
        )
        end

        sig do
          override.returns(
            {
              expires_at: T.nilable(Integer),
              provider: String,
              provider_display_name: String,
              status:
                GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationResponse::Status::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Confirms the message was requested.
        module Status
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONFIRMATION_REQUESTED =
            T.let(
              :CONFIRMATION_REQUESTED,
              GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationResponse::Status::TaggedSymbol
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
