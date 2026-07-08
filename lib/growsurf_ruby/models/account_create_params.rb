# frozen_string_literal: true

module GrowsurfRuby
  module Models
    # @see GrowsurfRuby::Resources::Account#create
    class AccountCreateParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      # @!attribute email
      #   The email address for the new account. Personal emails and disposable email addresses are not accepted.
      #
      #   @return [String]
      required :email, String

      # @!attribute company
      #
      #   @return [String, nil]
      optional :company, String

      # @!attribute first_name
      #
      #   @return [String, nil]
      optional :first_name, String, api_name: :firstName

      # @!attribute last_name
      #
      #   @return [String, nil]
      optional :last_name, String, api_name: :lastName

      # @!method initialize(email:, company: nil, first_name: nil, last_name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {GrowsurfRuby::Models::AccountCreateParams} for more details.
      #
      #   @param email [String] The email address for the new account. Personal emails and disposable email addresses are not accepted.
      #
      #   @param company [String]
      #
      #   @param first_name [String]
      #
      #   @param last_name [String]
      #
      #   @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
