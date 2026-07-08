# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantEmailResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::ParticipantEmailResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # The email was accepted for delivery.
        sig do
          returns(
            GrowsurfRuby::Campaign::ParticipantEmailResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T::Boolean) }
        attr_accessor :success

        sig do
          params(
            status:
              GrowsurfRuby::Campaign::ParticipantEmailResponse::Status::OrSymbol,
            success: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The email was accepted for delivery.
          status:,
          success:
        )
        end

        sig do
          override.returns(
            {
              status:
                GrowsurfRuby::Campaign::ParticipantEmailResponse::Status::TaggedSymbol,
              success: T::Boolean
            }
          )
        end
        def to_hash
        end

        # The email was accepted for delivery.
        module Status
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                GrowsurfRuby::Campaign::ParticipantEmailResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUEUED =
            T.let(
              :queued,
              GrowsurfRuby::Campaign::ParticipantEmailResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Campaign::ParticipantEmailResponse::Status::TaggedSymbol
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
