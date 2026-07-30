# typed: strong

module GrowsurfRuby
  module Models
    class AffiliateApplicationListResponse < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::AffiliateApplicationListResponse,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      # One page of the program's applications, newest first.
      sig { returns(T::Array[GrowsurfRuby::AffiliateApplication]) }
      attr_accessor :applications

      # Total number of applications matching the filter.
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
          applications: T::Array[GrowsurfRuby::AffiliateApplication::OrHash],
          total: Integer,
          limit: Integer,
          offset: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # One page of the program's applications, newest first.
        applications:,
        # Total number of applications matching the filter.
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
            applications: T::Array[GrowsurfRuby::AffiliateApplication],
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
