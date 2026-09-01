# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      ProgramResourceUploadParameter = T.type_alias { T.any(String, Integer, Float, T::Boolean) }

      class ProgramResourceUploadTicket < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(ProgramResourceUploadTicket, GrowsurfRuby::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :ticket

        sig { returns(Integer) }
        attr_accessor :expires_in

        sig { returns(String) }
        attr_accessor :upload_url

        sig { returns(T::Hash[Symbol, ProgramResourceUploadParameter]) }
        attr_accessor :upload_parameters

        sig do
          params(
            ticket: String,
            expires_in: Integer,
            upload_url: String,
            upload_parameters: T::Hash[Symbol, ProgramResourceUploadParameter]
          ).returns(T.attached_class)
        end
        def self.new(
          ticket:,
          expires_in:,
          upload_url:,
          upload_parameters:
        )
        end

        sig do
          override.returns(
            {
              ticket: String,
              expires_in: Integer,
              upload_url: String,
              upload_parameters: T::Hash[Symbol, ProgramResourceUploadParameter]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
