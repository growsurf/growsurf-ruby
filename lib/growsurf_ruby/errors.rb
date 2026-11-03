# frozen_string_literal: true

module GrowsurfRuby
  module Errors
    class Error < StandardError
      # @!attribute cause
      #
      #   @return [StandardError, nil]
    end

    class ConversionError < GrowsurfRuby::Errors::Error
      # @return [StandardError, nil]
      def cause = @cause.nil? ? super : @cause

      # @api private
      #
      # @param on [Class<StandardError>]
      # @param method [Symbol]
      # @param target [Object]
      # @param value [Object]
      # @param cause [StandardError, nil]
      def initialize(on:, method:, target:, value:, cause: nil)
        cls = on.name.split("::").last

        message = [
          "Failed to parse #{cls}.#{method} from #{value.class} to #{target.inspect}.",
          "To get the unparsed API response, use #{cls}[#{method.inspect}].",
          cause && "Cause: #{cause.message}"
        ].filter(&:itself).join(" ")

        @cause = cause
        super(message)
      end
    end

    class APIError < GrowsurfRuby::Errors::Error
      # @return [URI::Generic]
      attr_accessor :url

      # @return [Integer, nil]
      attr_accessor :status

      # @return [Hash{String=>String}, nil]
      attr_accessor :headers

      # @return [Object, nil]
      attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer, nil]
      # @param headers [Hash{String=>String}, nil]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status: nil, headers: nil, body: nil, request: nil, response: nil, message: nil)
        @url = url
        @status = status
        @headers = headers
        @body = body
        @request = request
        @response = response
        super(message)
      end
    end

    class APIConnectionError < GrowsurfRuby::Errors::APIError
      # @!attribute status
      #
      #   @return [nil]

      # @!attribute body
      #
      #   @return [nil]

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param headers [Hash{String=>String}, nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        headers: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Connection error."
      )
        super
      end
    end

    class APITimeoutError < GrowsurfRuby::Errors::APIConnectionError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param headers [Hash{String=>String}, nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        headers: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Request timed out."
      )
        super
      end
    end

    class APIStatusError < GrowsurfRuby::Errors::APIError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param headers [Hash{String=>String}, nil]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      #
      # @return [self]
      def self.for(url:, status:, headers:, body:, request:, response:, message: nil)
        kwargs =
          {
            url: url,
            status: status,
            headers: headers,
            body: body,
            request: request,
            response: response,
            message: message
          }

        case status
        in 400
          GrowsurfRuby::Errors::BadRequestError.new(**kwargs)
        in 401
          GrowsurfRuby::Errors::AuthenticationError.new(**kwargs)
        in 403
          GrowsurfRuby::Errors::PermissionDeniedError.new(**kwargs)
        in 404
          GrowsurfRuby::Errors::NotFoundError.new(**kwargs)
        in 409
          GrowsurfRuby::Errors::ConflictError.new(**kwargs)
        in 422
          GrowsurfRuby::Errors::UnprocessableEntityError.new(**kwargs)
        in 429
          GrowsurfRuby::Errors::RateLimitError.new(**kwargs)
        in (500..)
          GrowsurfRuby::Errors::InternalServerError.new(**kwargs)
        else
          GrowsurfRuby::Errors::APIStatusError.new(**kwargs)
        end
      end

      # @!parse
      #   # @return [Integer]
      #   attr_accessor :status

      # Documented error-body fields. Each is `nil` when the body omits it or sends
      # another type; `body` keeps the complete body, including fields added later.

      # Error name returned for the failed request.
      #
      # @return [String, nil]
      attr_reader :error_name

      # Stable machine-readable error code.
      #
      # @return [String, nil]
      attr_reader :error_code

      # Human-readable error message.
      #
      # @return [String, nil]
      attr_reader :error_message

      # Optional validation details for specific request fields.
      #
      # @return [Array<Hash{Symbol=>Object}>, nil]
      attr_reader :errors

      # Support URL related to the error, when available.
      #
      # @return [String, nil]
      attr_reader :support_url

      # Rate-limit policy name for `429` errors, when available.
      #
      # @return [String, nil]
      attr_reader :policy_name

      # Error severity level, when available.
      #
      # @return [String, nil]
      attr_reader :level

      # When the error response was created.
      #
      # @return [String, nil]
      attr_reader :timestamp

      # Fraud risk level assigned to the blocked signup.
      #
      # @return [String, nil]
      attr_reader :fraud_risk_level

      # Machine-readable reason code for the fraud decision.
      #
      # @return [String, nil]
      attr_reader :fraud_reason_code

      # Existing participant IDs related to the fraud match.
      #
      # @return [Array<String>, nil]
      attr_reader :matched_participant_ids

      # Email address from the blocked signup attempt.
      #
      # @return [String, nil]
      attr_reader :email

      # Referrer participant ID supplied with the blocked signup, or `null`.
      #
      # @return [String, nil]
      attr_reader :referrer_id

      # IP address supplied with the blocked signup, or `null`.
      #
      # @return [String, nil]
      attr_reader :ip_address

      # Browser fingerprint supplied with the blocked signup, or `null`.
      #
      # @return [String, nil]
      attr_reader :fingerprint

      # When the signup was blocked.
      #
      # @return [String, nil]
      attr_reader :blocked_at

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param headers [Hash{String=>String}, nil]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status:, headers:, body:, request:, response:, message: nil)
        message ||= {url: url.to_s, status: status, body: body}
        super(
          url: url,
          status: status,
          headers: headers,
          body: body,
          request: request,
          response: response,
          message: message&.to_s
        )

        fields = body.is_a?(Hash) ? body : {}
        @error_name = string_or_nil(fields[:name])
        @error_code = string_or_nil(fields[:code])
        @error_message = string_or_nil(fields[:message])
        @errors = hash_list_or_nil(fields[:errors])
        @support_url = string_or_nil(fields[:supportUrl])
        @policy_name = string_or_nil(fields[:policyName])
        @level = string_or_nil(fields[:level])
        @timestamp = string_or_nil(fields[:timestamp])
        @fraud_risk_level = string_or_nil(fields[:fraudRiskLevel])
        @fraud_reason_code = string_or_nil(fields[:fraudReasonCode])
        @matched_participant_ids = string_list_or_nil(fields[:matchedParticipantIds])
        @email = string_or_nil(fields[:email])
        @referrer_id = string_or_nil(fields[:referrerId])
        @ip_address = string_or_nil(fields[:ipAddress])
        @fingerprint = string_or_nil(fields[:fingerprint])
        @blocked_at = string_or_nil(fields[:blockedAt])
      end

      private

      # @api private
      #
      # @param value [Object]
      #
      # @return [String, nil]
      def string_or_nil(value) = value.is_a?(String) ? value : nil

      # @api private
      #
      # @param value [Object]
      #
      # @return [Array<String>, nil]
      def string_list_or_nil(value)
        value.is_a?(Array) && value.all?(String) ? value : nil
      end

      # @api private
      #
      # @param value [Object]
      #
      # @return [Array<Hash{Symbol=>Object}>, nil]
      def hash_list_or_nil(value)
        value.is_a?(Array) && value.all?(Hash) ? value : nil
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
      HTTP_STATUS = (500..)
    end
  end
end
