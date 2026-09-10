# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class IntegrationListResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::IntegrationListResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # Every integration this program can connect, in the order the GrowSurf dashboard
        # lists them.
        sig { returns(T::Array[GrowsurfRuby::Models::Campaign::Integration]) }
        attr_accessor :integrations

        sig do
          params(
            integrations:
              T::Array[GrowsurfRuby::Models::Campaign::Integration::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Every integration this program can connect, in the order the GrowSurf dashboard
          # lists them.
          integrations:
        )
        end

        sig do
          override.returns(
            {
              integrations:
                T::Array[GrowsurfRuby::Models::Campaign::Integration]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
