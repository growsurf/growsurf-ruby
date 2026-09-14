# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ParticipantDeleteResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::ParticipantDeleteResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(GrowsurfRuby::Models::Campaign::PendingAnalyticsErasure)
          )
        end
        attr_reader :analytics_erasure

        sig do
          params(
            analytics_erasure:
              T.nilable(
                GrowsurfRuby::Models::Campaign::PendingAnalyticsErasure::OrHash
              )
          ).void
        end
        attr_writer :analytics_erasure

        sig { returns(T::Boolean) }
        attr_accessor :success

        sig do
          params(
            success: T::Boolean,
            analytics_erasure:
              T.nilable(
                GrowsurfRuby::Models::Campaign::PendingAnalyticsErasure::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(success:, analytics_erasure: nil)
        end

        sig do
          override.returns(
            {
              success: T::Boolean,
              analytics_erasure:
                T.nilable(
                  GrowsurfRuby::Models::Campaign::PendingAnalyticsErasure
                )
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
