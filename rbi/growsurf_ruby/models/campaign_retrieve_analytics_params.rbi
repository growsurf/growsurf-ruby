# typed: strong

module GrowsurfRuby
  module Models
    class CampaignRetrieveAnalyticsParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CampaignRetrieveAnalyticsParams,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Last number of days to retrieve analytics for. Defaults to 365. Maximum 1825.
      sig { returns(T.nilable(Integer)) }
      attr_reader :days

      sig { params(days: Integer).void }
      attr_writer :days

      # End date of the analytics timeframe as a Unix timestamp in milliseconds.
      # Required if `days` is not set.
      sig { returns(T.nilable(Integer)) }
      attr_reader :end_date

      sig { params(end_date: Integer).void }
      attr_writer :end_date

      # Start date of the analytics timeframe as a Unix timestamp in milliseconds.
      # Required if `days` is not set.
      sig { returns(T.nilable(Integer)) }
      attr_reader :start_date

      sig { params(start_date: Integer).void }
      attr_writer :start_date

      sig do
        params(
          id: String,
          days: Integer,
          end_date: Integer,
          start_date: Integer,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Last number of days to retrieve analytics for. Defaults to 365. Maximum 1825.
        days: nil,
        # End date of the analytics timeframe as a Unix timestamp in milliseconds.
        # Required if `days` is not set.
        end_date: nil,
        # Start date of the analytics timeframe as a Unix timestamp in milliseconds.
        # Required if `days` is not set.
        start_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            days: Integer,
            end_date: Integer,
            start_date: Integer,
            request_options: GrowsurfRuby::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
