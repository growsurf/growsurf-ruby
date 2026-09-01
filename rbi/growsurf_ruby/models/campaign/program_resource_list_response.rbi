# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class ProgramResourceListResponse < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(ProgramResourceListResponse, GrowsurfRuby::Internal::AnyHash)
          end

        sig { returns(T::Array[ProgramResource]) }
        attr_accessor :resources

        sig do
          params(resources: T::Array[ProgramResource::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(resources:)
        end

        sig { override.returns({ resources: T::Array[ProgramResource] }) }
        def to_hash
        end
      end
    end
  end
end
