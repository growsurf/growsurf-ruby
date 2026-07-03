# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      class Installation
        # Retrieves a program's installation configuration — the same surface as the
        # dashboard Program Editor's **Installation** tab. This is a nested object whose
        # available fields depend on the program type. See the API reference for the full
        # field list.
        sig do
          params(
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T::Hash[Symbol, T.anything])
        end
        def retrieve(
          # GrowSurf program ID.
          id,
          request_options: {}
        )
        end

        # Updates a program's installation configuration. Only the fields you send are
        # changed. The request body is a partial installation configuration object — see
        # the API reference for the full field list.
        sig do
          params(
            id: String,
            body: T::Hash[Symbol, T.anything],
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T::Hash[Symbol, T.anything])
        end
        def update(
          # GrowSurf program ID.
          id,
          # Partial installation configuration to merge.
          body,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: GrowsurfRuby::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
