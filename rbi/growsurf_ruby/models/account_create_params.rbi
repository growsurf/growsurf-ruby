# typed: strong

module GrowsurfRuby
  module Models
    class AccountCreateParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::AccountCreateParams,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      # The email address for the new account. Personal emails and disposable email addresses are not accepted.
      sig { returns(String) }
      attr_accessor :email

      sig { returns(T.nilable(String)) }
      attr_reader :company

      sig { params(company: String).void }
      attr_writer :company

      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

      sig do
        params(
          email: String,
          company: String,
          first_name: String,
          last_name: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The email address for the new account. Personal emails and disposable email addresses are not accepted.
        email:,
        company: nil,
        first_name: nil,
        last_name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email: String,
            company: String,
            first_name: String,
            last_name: String,
            request_options: GrowsurfRuby::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
