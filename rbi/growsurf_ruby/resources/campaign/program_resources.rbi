# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      class ProgramResources
        sig do
          params(
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Campaign::ProgramResourceListResponse)
        end
        def list(id, request_options: {})
        end

        sig do
          params(
            id: String,
            type:
              GrowsurfRuby::Campaign::ProgramResourceCreateParams::Type::OrSymbol,
            title: String,
            description: T.nilable(String),
            category: T.nilable(String),
            is_published: T::Boolean,
            url: String,
            text: String,
            upload_ticket: String,
            upload_result: GrowsurfRuby::Campaign::ProgramResourceUploadResult::OrHash,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Campaign::ProgramResource)
        end
        def create(
          id,
          type:,
          title:,
          description: nil,
          category: nil,
          is_published: nil,
          url: nil,
          text: nil,
          upload_ticket: nil,
          upload_result: nil,
          request_options: {}
        )
        end

        sig do
          params(
            resource_id: String,
            id: String,
            type:
              GrowsurfRuby::Campaign::ProgramResourceUpdateParams::Type::OrSymbol,
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
          ).returns(GrowsurfRuby::Campaign::ProgramResource)
        end
        def update(
          resource_id,
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

        sig do
          params(
            resource_id: String,
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Campaign::DeleteProgramResourceResponse)
        end
        def delete(resource_id, id:, request_options: {})
        end

        sig do
          params(
            id: String,
            file_name: String,
            mime_type: String,
            bytes: Integer,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Campaign::ProgramResourceUploadTicket)
        end
        def create_upload_ticket(
          id,
          file_name:,
          mime_type:,
          bytes:,
          request_options: {}
        )
        end

        sig { params(client: GrowsurfRuby::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
