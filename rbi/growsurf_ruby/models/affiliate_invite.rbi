# typed: strong

module GrowsurfRuby
  module Models
    class AffiliateInvite < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(GrowsurfRuby::AffiliateInvite, GrowsurfRuby::Internal::AnyHash)
        end

      # When the invite was accepted, in Unix milliseconds. `null` until accepted.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :accepted_at

      # When the invite was created, in Unix milliseconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :created_at

      sig { params(created_at: Integer).void }
      attr_writer :created_at

      # Invitee email address.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # When the emailed accept link stops working, in Unix milliseconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :expires_at

      sig { params(expires_at: Integer).void }
      attr_writer :expires_at

      # Invitee first name, when provided.
      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: T.nilable(String)).void }
      attr_writer :first_name

      # Invite ID.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Invitee last name, when provided.
      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: T.nilable(String)).void }
      attr_writer :last_name

      # When the invite email was last sent, in Unix milliseconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last_sent_at

      sig { params(last_sent_at: Integer).void }
      attr_writer :last_sent_at

      # When the invite was revoked, in Unix milliseconds. `null` unless revoked.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :revoked_at

      # The invite's lifecycle state. Accepting a pending invite enrolls the invitee as
      # an approved affiliate.
      sig do
        returns(T.nilable(GrowsurfRuby::AffiliateInvite::Status::TaggedSymbol))
      end
      attr_reader :status

      sig do
        params(status: GrowsurfRuby::AffiliateInvite::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          accepted_at: T.nilable(Integer),
          created_at: Integer,
          email: String,
          expires_at: Integer,
          first_name: T.nilable(String),
          id: String,
          last_name: T.nilable(String),
          last_sent_at: Integer,
          revoked_at: T.nilable(Integer),
          status: GrowsurfRuby::AffiliateInvite::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # When the invite was accepted, in Unix milliseconds. `null` until accepted.
        accepted_at: nil,
        # When the invite was created, in Unix milliseconds.
        created_at: nil,
        # Invitee email address.
        email: nil,
        # When the emailed accept link stops working, in Unix milliseconds.
        expires_at: nil,
        # Invitee first name, when provided.
        first_name: nil,
        # Invite ID.
        id: nil,
        # Invitee last name, when provided.
        last_name: nil,
        # When the invite email was last sent, in Unix milliseconds.
        last_sent_at: nil,
        # When the invite was revoked, in Unix milliseconds. `null` unless revoked.
        revoked_at: nil,
        # The invite's lifecycle state. Accepting a pending invite enrolls the invitee as
        # an approved affiliate.
        status: nil
      )
      end

      sig do
        override.returns(
          {
            accepted_at: T.nilable(Integer),
            created_at: Integer,
            email: String,
            expires_at: Integer,
            first_name: T.nilable(String),
            id: String,
            last_name: T.nilable(String),
            last_sent_at: Integer,
            revoked_at: T.nilable(Integer),
            status:
              T.nilable(GrowsurfRuby::AffiliateInvite::Status::TaggedSymbol)
          }
        )
      end
      def to_hash
      end

      # The invite's lifecycle state. Accepting a pending invite enrolls the invitee as
      # an approved affiliate.
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, GrowsurfRuby::AffiliateInvite::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:PENDING, GrowsurfRuby::AffiliateInvite::Status::TaggedSymbol)
        ACCEPTED =
          T.let(:ACCEPTED, GrowsurfRuby::AffiliateInvite::Status::TaggedSymbol)
        EXPIRED =
          T.let(:EXPIRED, GrowsurfRuby::AffiliateInvite::Status::TaggedSymbol)
        REVOKED =
          T.let(:REVOKED, GrowsurfRuby::AffiliateInvite::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[GrowsurfRuby::AffiliateInvite::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
