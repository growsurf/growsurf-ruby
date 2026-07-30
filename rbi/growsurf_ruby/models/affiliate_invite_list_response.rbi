# typed: strong

module GrowsurfRuby
  module Models
    class AffiliateInviteListResponse < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::AffiliateInviteListResponse,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      # One page of the program's invites, newest first.
      sig { returns(T::Array[GrowsurfRuby::AffiliateInvite]) }
      attr_accessor :invites

      # Total number of invites matching the filter.
      sig { returns(Integer) }
      attr_accessor :total

      # The page size used.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # The offset this page started at.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          invites: T::Array[GrowsurfRuby::AffiliateInvite::OrHash],
          total: Integer,
          limit: Integer,
          offset: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # One page of the program's invites, newest first.
        invites:,
        # Total number of invites matching the filter.
        total:,
        # The page size used.
        limit: nil,
        # The offset this page started at.
        offset: nil
      )
      end

      sig do
        override.returns(
          {
            invites: T::Array[GrowsurfRuby::AffiliateInvite],
            total: Integer,
            limit: Integer,
            offset: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
