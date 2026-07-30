# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantRequestPayoutDestinationConfirmationParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationParams,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :participant_id_or_email

        # The payout provider the participant should confirm a destination for.
        sig do
          returns(
            GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationParams::Provider::TaggedSymbol
          )
        end
        attr_accessor :provider

        sig do
          params(
            id: String,
            participant_id_or_email: String,
            provider:
              GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationParams::Provider::OrSymbol,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          participant_id_or_email:,
          # The payout provider the participant should confirm a destination for.
          provider:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              participant_id_or_email: String,
              provider:
                GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationParams::Provider::TaggedSymbol,
              request_options: GrowsurfRuby::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Provider
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationParams::Provider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAYPAL =
            T.let(
              :PAYPAL,
              GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationParams::Provider::TaggedSymbol
            )
          WISECOM =
            T.let(
              :WISECOM,
              GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationParams::Provider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Campaign::ParticipantRequestPayoutDestinationConfirmationParams::Provider::TaggedSymbol
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
