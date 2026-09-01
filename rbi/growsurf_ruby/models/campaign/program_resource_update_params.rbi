# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ProgramResourceUpdateParams < GrowsurfRuby::Internal::Type::BaseModel
        extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
        include GrowsurfRuby::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(ProgramResourceUpdateParams, GrowsurfRuby::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Type::TaggedSymbol)) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_accessor :title

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(String)) }
        attr_accessor :category

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_published

        sig { params(is_published: T::Boolean).void }
        attr_writer :is_published

        sig { returns(T.nilable(Integer)) }
        attr_accessor :position

        sig { returns(T.nilable(String)) }
        attr_accessor :url

        sig { returns(T.nilable(String)) }
        attr_accessor :text

        sig { returns(T.nilable(String)) }
        attr_accessor :upload_ticket

        sig { returns(T.nilable(GrowsurfRuby::Campaign::ProgramResourceUploadResult)) }
        attr_reader :upload_result

        sig { params(upload_result: GrowsurfRuby::Campaign::ProgramResourceUploadResult::OrHash).void }
        attr_writer :upload_result

        sig do
          params(
            id: String,
            type: Type::OrSymbol,
            title: String,
            description: T.nilable(String),
            category: T.nilable(String),
            is_published: T::Boolean,
            position: Integer,
            url: String,
            text: String,
            upload_ticket: String,
            upload_result: GrowsurfRuby::Campaign::ProgramResourceUploadResult::OrHash,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          type: nil,
          title: nil,
          description: nil,
          category: nil,
          is_published: nil,
          position: nil,
          url: nil,
          text: nil,
          upload_ticket: nil,
          upload_result: nil,
          request_options: {}
        )
        end

        sig { override.returns(T::Hash[Symbol, T.anything]) }
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
