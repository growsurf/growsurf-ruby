# typed: strong

module GrowsurfRuby
  module Errors
    class Error < StandardError
      sig { returns(T.nilable(StandardError)) }
      attr_accessor :cause
    end

    class ConversionError < GrowsurfRuby::Errors::Error
      sig { returns(T.nilable(StandardError)) }
      def cause
      end

      # @api private
      sig do
        params(
          on: T::Class[StandardError],
          method: Symbol,
          target: T.anything,
          value: T.anything,
          cause: T.nilable(StandardError)
        ).returns(T.attached_class)
      end
      def self.new(on:, method:, target:, value:, cause: nil)
      end
    end

    class APIError < GrowsurfRuby::Errors::Error
      sig { returns(URI::Generic) }
      attr_accessor :url

      sig { returns(T.nilable(Integer)) }
      attr_accessor :status

      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :headers

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :body

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: T.nilable(Integer),
          headers: T.nilable(T::Hash[String, String]),
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        url:,
        status: nil,
        headers: nil,
        body: nil,
        request: nil,
        response: nil,
        message: nil
      )
      end
    end

    class APIConnectionError < GrowsurfRuby::Errors::APIError
      sig { returns(NilClass) }
      attr_accessor :status

      sig { returns(NilClass) }
      attr_accessor :body

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: NilClass,
          headers: T.nilable(T::Hash[String, String]),
          body: NilClass,
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        url:,
        status: nil,
        headers: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Connection error."
      )
      end
    end

    class APITimeoutError < GrowsurfRuby::Errors::APIConnectionError
      # @api private
      sig do
        params(
          url: URI::Generic,
          status: NilClass,
          headers: T.nilable(T::Hash[String, String]),
          body: NilClass,
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        url:,
        status: nil,
        headers: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Request timed out."
      )
      end
    end

    class APIStatusError < GrowsurfRuby::Errors::APIError
      # @api private
      sig do
        params(
          url: URI::Generic,
          status: Integer,
          headers: T.nilable(T::Hash[String, String]),
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.for(
        url:,
        status:,
        headers:,
        body:,
        request:,
        response:,
        message: nil
      )
      end

      sig { returns(Integer) }
      attr_accessor :status

      # Error name returned for the failed request.
      sig { returns(T.nilable(String)) }
      attr_reader :error_name

      # Stable machine-readable error code.
      sig { returns(T.nilable(String)) }
      attr_reader :error_code

      # Human-readable error message.
      sig { returns(T.nilable(String)) }
      attr_reader :error_message

      # Optional validation details for specific request fields.
      sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
      attr_reader :errors

      # Support URL related to the error, when available.
      sig { returns(T.nilable(String)) }
      attr_reader :support_url

      # Rate-limit policy name for `429` errors, when available.
      sig { returns(T.nilable(String)) }
      attr_reader :policy_name

      # Error severity level, when available.
      sig { returns(T.nilable(String)) }
      attr_reader :level

      # When the error response was created.
      sig { returns(T.nilable(String)) }
      attr_reader :timestamp

      # Fraud risk level assigned to the blocked signup.
      sig { returns(T.nilable(String)) }
      attr_reader :fraud_risk_level

      # Machine-readable reason code for the fraud decision.
      sig { returns(T.nilable(String)) }
      attr_reader :fraud_reason_code

      # Existing participant IDs related to the fraud match.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :matched_participant_ids

      # Email address from the blocked signup attempt.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      # Referrer participant ID supplied with the blocked signup, or `null`.
      sig { returns(T.nilable(String)) }
      attr_reader :referrer_id

      # IP address supplied with the blocked signup, or `null`.
      sig { returns(T.nilable(String)) }
      attr_reader :ip_address

      # Browser fingerprint supplied with the blocked signup, or `null`.
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint

      # When the signup was blocked.
      sig { returns(T.nilable(String)) }
      attr_reader :blocked_at

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: Integer,
          headers: T.nilable(T::Hash[String, String]),
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        url:,
        status:,
        headers:,
        body:,
        request:,
        response:,
        message: nil
      )
      end
    end

    class BadRequestError < GrowsurfRuby::Errors::APIStatusError
      HTTP_STATUS = 400
    end

    class AuthenticationError < GrowsurfRuby::Errors::APIStatusError
      HTTP_STATUS = 401
    end

    class PermissionDeniedError < GrowsurfRuby::Errors::APIStatusError
      HTTP_STATUS = 403
    end

    class NotFoundError < GrowsurfRuby::Errors::APIStatusError
      HTTP_STATUS = 404
    end

    class ConflictError < GrowsurfRuby::Errors::APIStatusError
      HTTP_STATUS = 409
    end

    class UnprocessableEntityError < GrowsurfRuby::Errors::APIStatusError
      HTTP_STATUS = 422
    end

    class RateLimitError < GrowsurfRuby::Errors::APIStatusError
      HTTP_STATUS = 429
    end

    class InternalServerError < GrowsurfRuby::Errors::APIStatusError
      HTTP_STATUS = T.let((500..), T::Range[Integer])
    end
  end
end
