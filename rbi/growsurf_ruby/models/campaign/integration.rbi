# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class Integration < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::Integration,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        # Stable integration key, the same value the GrowSurf dashboard uses for this
        # integration.
        sig { returns(String) }
        attr_accessor :id

        # Whether GrowSurf switched the integration off after repeated delivery failures.
        # Its credentials are still stored, but it delivers nothing until it is
        # reconnected in the GrowSurf dashboard.
        sig { returns(T::Boolean) }
        attr_accessor :auto_disabled

        # Dashboard link that opens this integration's connect panel in the GrowSurf Program
        # Editor. Give it to the person running the program: connecting an account is a step
        # they complete in the dashboard, and the API cannot do it for them.
        sig { returns(String) }
        attr_accessor :connect_url

        # Whether the program has stored credentials for this integration.
        sig { returns(T::Boolean) }
        attr_accessor :connected

        # Whether the integration is switched on and currently working.
        sig { returns(T::Boolean) }
        attr_accessor :enabled

        # Display name, matching what the GrowSurf dashboard calls this integration.
        sig { returns(String) }
        attr_accessor :name

        # One integration a program can connect, with its current state.
        sig do
          params(
            id: String,
            auto_disabled: T::Boolean,
            connect_url: String,
            connected: T::Boolean,
            enabled: T::Boolean,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Stable integration key, the same value the GrowSurf dashboard uses for this
          # integration.
          id:,
          # Whether GrowSurf switched the integration off after repeated delivery failures.
          # Its credentials are still stored, but it delivers nothing until it is
          # reconnected in the GrowSurf dashboard.
          auto_disabled:,
          # Dashboard link that opens this integration's connect panel in the GrowSurf Program
          # Editor. Give it to the person running the program: connecting an account is a step
          # they complete in the dashboard, and the API cannot do it for them.
          connect_url:,
          # Whether the program has stored credentials for this integration.
          connected:,
          # Whether the integration is switched on and currently working.
          enabled:,
          # Display name, matching what the GrowSurf dashboard calls this integration.
          name:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              auto_disabled: T::Boolean,
              connect_url: String,
              connected: T::Boolean,
              enabled: T::Boolean,
              name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
