# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ProgramResourceUploadResult < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(ProgramResourceUploadResult, GrowsurfRuby::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :asset_id

        sig { returns(String) }
        attr_accessor :public_id

        sig { returns(Integer) }
        attr_accessor :version

        sig { returns(String) }
        attr_accessor :signature

        sig { returns(ResourceType::TaggedSymbol) }
        attr_accessor :resource_type

        sig { returns(Type::TaggedSymbol) }
        attr_accessor :type

        sig { returns(Integer) }
        attr_accessor :bytes

        sig { returns(String) }
        attr_accessor :secure_url

        sig { returns(T.nilable(String)) }
        attr_accessor :format

        sig do
          params(
            public_id: String,
            version: Integer,
            signature: String,
            resource_type: ResourceType::OrSymbol,
            type: Type::OrSymbol,
            bytes: Integer,
            secure_url: String,
            asset_id: String,
            format: String
          ).returns(T.attached_class)
        end
        def self.new(
          public_id:,
          version:,
          signature:,
          resource_type:,
          type:,
          bytes:,
          secure_url:,
          asset_id: nil,
          format: nil
        )
        end

        sig { override.returns(T::Hash[Symbol, T.anything]) }
        def to_hash
        end

        module ResourceType
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, ResourceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }
          IMAGE = T.let(:image, TaggedSymbol)
          RAW = T.let(:raw, TaggedSymbol)
          sig { override.returns(T::Array[TaggedSymbol]) }
          def self.values
          end
        end

        module Type
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }
          AUTHENTICATED = T.let(:authenticated, TaggedSymbol)
          sig { override.returns(T::Array[TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
