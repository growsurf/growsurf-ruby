# typed: strong

module GrowsurfRuby
  module Models
    class EmailAnalytics < GrowsurfRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::Models::EmailAnalytics,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :sent

      sig { returns(Integer) }
      attr_accessor :delivered

      sig { returns(Integer) }
      attr_accessor :opened

      sig { returns(Integer) }
      attr_accessor :clicked

      sig { returns(Integer) }
      attr_accessor :bounced

      sig { returns(Integer) }
      attr_accessor :spam_complaints

      sig { returns(Float) }
      attr_accessor :delivery_rate

      sig { returns(Float) }
      attr_accessor :open_rate

      sig { returns(Float) }
      attr_accessor :click_rate

      sig { returns(Float) }
      attr_accessor :bounce_rate

      sig { returns(T::Array[GrowsurfRuby::Models::EmailAnalytics::ByType]) }
      attr_reader :by_type

      sig do
        params(
          by_type:
            T::Array[GrowsurfRuby::Models::EmailAnalytics::ByType::OrHash]
        ).void
      end
      attr_writer :by_type

      sig { returns(T.nilable(Integer)) }
      attr_accessor :coverage_start_date

      sig { returns(T::Boolean) }
      attr_accessor :is_partial

      sig do
        params(
          sent: Integer,
          delivered: Integer,
          opened: Integer,
          clicked: Integer,
          bounced: Integer,
          spam_complaints: Integer,
          delivery_rate: Float,
          open_rate: Float,
          click_rate: Float,
          bounce_rate: Float,
          by_type:
            T::Array[GrowsurfRuby::Models::EmailAnalytics::ByType::OrHash],
          coverage_start_date: T.nilable(Integer),
          is_partial: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        sent:,
        delivered:,
        opened:,
        clicked:,
        bounced:,
        spam_complaints:,
        delivery_rate:,
        open_rate:,
        click_rate:,
        bounce_rate:,
        by_type:,
        coverage_start_date:,
        is_partial:
      )
      end

      class Counts < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::EmailAnalytics::Counts,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :sent

        sig { returns(Integer) }
        attr_accessor :delivered

        sig { returns(Integer) }
        attr_accessor :opened

        sig { returns(Integer) }
        attr_accessor :clicked

        sig { returns(Integer) }
        attr_accessor :bounced

        sig { returns(Integer) }
        attr_accessor :spam_complaints

        sig do
          params(
            sent: Integer,
            delivered: Integer,
            opened: Integer,
            clicked: Integer,
            bounced: Integer,
            spam_complaints: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          sent:,
          delivered:,
          opened:,
          clicked:,
          bounced:,
          spam_complaints:
        )
        end
      end

      class ByType < GrowsurfRuby::Models::EmailAnalytics::Counts
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Models::EmailAnalytics::ByType,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email_type

        sig { returns(Float) }
        attr_accessor :delivery_rate

        sig { returns(Float) }
        attr_accessor :open_rate

        sig { returns(Float) }
        attr_accessor :click_rate

        sig { returns(Float) }
        attr_accessor :bounce_rate

        sig do
          params(
            sent: Integer,
            delivered: Integer,
            opened: Integer,
            clicked: Integer,
            bounced: Integer,
            spam_complaints: Integer,
            email_type: String,
            delivery_rate: Float,
            open_rate: Float,
            click_rate: Float,
            bounce_rate: Float
          ).returns(T.attached_class)
        end
        def self.new(
          sent:,
          delivered:,
          opened:,
          clicked:,
          bounced:,
          spam_complaints:,
          email_type:,
          delivery_rate:,
          open_rate:,
          click_rate:,
          bounce_rate:
        )
        end
      end
    end
  end
end
