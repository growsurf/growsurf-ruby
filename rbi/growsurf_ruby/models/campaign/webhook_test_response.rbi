# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class WebhookTestResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::Campaign::WebhookTestResponse,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :success

        # The mock event payload that was sent.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :payload

        sig { params(payload: T::Hash[Symbol, T.anything]).void }
        attr_writer :payload

        sig do
          returns(
            T.nilable(GrowsurfRuby::Campaign::WebhookTestResponse::Response)
          )
        end
        attr_reader :response

        sig do
          params(
            response:
              GrowsurfRuby::Campaign::WebhookTestResponse::Response::OrHash
          ).void
        end
        attr_writer :response

        sig do
          params(
            success: T::Boolean,
            payload: T::Hash[Symbol, T.anything],
            response:
              GrowsurfRuby::Campaign::WebhookTestResponse::Response::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          success:,
          # The mock event payload that was sent.
          payload: nil,
          response: nil
        )
        end

        sig do
          override.returns(
            {
              success: T::Boolean,
              payload: T::Hash[Symbol, T.anything],
              response: GrowsurfRuby::Campaign::WebhookTestResponse::Response
            }
          )
        end
        def to_hash
        end

        class Response < GrowsurfRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                GrowsurfRuby::Campaign::WebhookTestResponse::Response,
                GrowsurfRuby::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :msg

          sig { params(msg: String).void }
          attr_writer :msg

          sig { returns(T.nilable(Integer)) }
          attr_reader :status_code

          sig { params(status_code: Integer).void }
          attr_writer :status_code

          sig do
            params(msg: String, status_code: Integer).returns(T.attached_class)
          end
          def self.new(msg: nil, status_code: nil)
          end

          sig { override.returns({ msg: String, status_code: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
