# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ProgramResourceFile < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(ProgramResourceFile, GrowsurfRuby::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :file_name

        sig { returns(String) }
        attr_accessor :mime_type

        sig { returns(Integer) }
        attr_accessor :bytes

        sig { returns(String) }
        attr_accessor :format

        sig { returns(ModerationStatus::TaggedSymbol) }
        attr_accessor :moderation_status

        sig do
          params(
            file_name: String,
            mime_type: String,
            bytes: Integer,
            format: String,
            moderation_status: ModerationStatus::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          file_name:,
          mime_type:,
          bytes:,
          format:,
          moderation_status:
        )
        end

        sig do
          override.returns(
            {
              file_name: String,
              mime_type: String,
              bytes: Integer,
              format: String,
              moderation_status: ModerationStatus::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module ModerationStatus
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, ModerationStatus) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }
          PENDING = T.let(:PENDING, TaggedSymbol)
          APPROVED = T.let(:APPROVED, TaggedSymbol)
          REJECTED = T.let(:REJECTED, TaggedSymbol)
          sig { override.returns(T::Array[TaggedSymbol]) }
          def self.values
          end
        end
      end

      class ProgramResource < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(ProgramResource, GrowsurfRuby::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Type::TaggedSymbol) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :title

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(String)) }
        attr_accessor :category

        sig { returns(T.nilable(String)) }
        attr_accessor :url

        sig { returns(T.nilable(String)) }
        attr_accessor :text

        sig { returns(T.nilable(ProgramResourceFile)) }
        attr_reader :file

        sig { params(file: T.nilable(ProgramResourceFile::OrHash)).void }
        attr_writer :file

        sig { returns(T::Boolean) }
        attr_accessor :is_published

        sig { returns(Integer) }
        attr_accessor :position

        sig { returns(Integer) }
        attr_accessor :created_at

        sig { returns(Integer) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            type: Type::OrSymbol,
            title: String,
            description: T.nilable(String),
            category: T.nilable(String),
            url: T.nilable(String),
            text: T.nilable(String),
            file: T.nilable(ProgramResourceFile::OrHash),
            is_published: T::Boolean,
            position: Integer,
            created_at: Integer,
            updated_at: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          type:,
          title:,
          description:,
          category:,
          url:,
          text:,
          file:,
          is_published:,
          position:,
          created_at:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              type: Type::TaggedSymbol,
              title: String,
              description: T.nilable(String),
              category: T.nilable(String),
              url: T.nilable(String),
              text: T.nilable(String),
              file: T.nilable(ProgramResourceFile),
              is_published: T::Boolean,
              position: Integer,
              created_at: Integer,
              updated_at: Integer
            }
          )
        end
        def to_hash
        end

        module Type
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }
          FILE = T.let(:FILE, TaggedSymbol)
          LINK = T.let(:LINK, TaggedSymbol)
          TEXT = T.let(:TEXT, TaggedSymbol)
          sig { override.returns(T::Array[TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
