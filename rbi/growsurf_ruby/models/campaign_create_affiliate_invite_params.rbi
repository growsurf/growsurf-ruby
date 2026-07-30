# typed: strong

module GrowsurfRuby
  module Models
    class CampaignCreateAffiliateInviteParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CampaignCreateAffiliateInviteParams,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Valid email address to invite. Maximum 255 characters.
      sig { returns(String) }
      attr_accessor :email

      # Invitee first name, used in the invite email. Maximum 255 characters.
      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      # Invitee last name. Maximum 255 characters.
      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

      sig do
        params(
          id: String,
          email: String,
          first_name: String,
          last_name: String,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Valid email address to invite. Maximum 255 characters.
        email:,
        # Invitee first name, used in the invite email. Maximum 255 characters.
        first_name: nil,
        # Invitee last name. Maximum 255 characters.
        last_name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            email: String,
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
