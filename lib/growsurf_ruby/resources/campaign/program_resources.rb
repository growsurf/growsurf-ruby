# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      # Program Resource management and secure FILE upload operations.
      class ProgramResources
        def list(id, params = {})
          @client.request(
            method: :get,
            path: ["campaign/%1$s/resources", id],
            model: GrowsurfRuby::Campaign::ProgramResourceListResponse,
            options: params[:request_options]
          )
        end

        def create(id, params)
          parsed, options = GrowsurfRuby::Campaign::ProgramResourceCreateParams.dump_request(params)
          validate_write!(parsed, creating: true)
          @client.request(
            method: :post,
            path: ["campaign/%1$s/resources", id],
            body: parsed,
            model: GrowsurfRuby::Campaign::ProgramResource,
            options: options
          )
        end

        def update(resource_id, params)
          parsed, options = GrowsurfRuby::Campaign::ProgramResourceUpdateParams.dump_request(params)
          id = parsed.delete(:id) { raise ArgumentError.new("missing required path argument id") }
          validate_write!(parsed, creating: false)
          @client.request(
            method: :patch,
            path: ["campaign/%1$s/resources/%2$s", id, resource_id],
            body: parsed,
            model: GrowsurfRuby::Campaign::ProgramResource,
            options: options
          )
        end

        def delete(resource_id, params)
          parsed, options = GrowsurfRuby::Campaign::ProgramResourceDeleteParams.dump_request(params)
          id = parsed.delete(:id) { raise ArgumentError.new("missing required path argument id") }
          @client.request(
            method: :delete,
            path: ["campaign/%1$s/resources/%2$s", id, resource_id],
            model: GrowsurfRuby::Campaign::DeleteProgramResourceResponse,
            options: options
          )
        end

        def create_upload_ticket(id, params)
          parsed, options = GrowsurfRuby::Campaign::ProgramResourceUploadTicketParams.dump_request(params)
          file_name = parsed[:fileName]
          unless file_name.is_a?(String) && file_name.length.between?(1, 120)
            raise ArgumentError.new("Program Resource file_name must contain 1 through 120 characters")
          end
          @client.request(
            method: :post,
            path: ["campaign/%1$s/resource-upload-tickets", id],
            body: parsed,
            model: GrowsurfRuby::Campaign::ProgramResourceUploadTicket,
            options: options
          )
        end

        # @api private
        def initialize(client:)
          @client = client
        end

        private

        # Rejects Resource field combinations excluded by the public REST contract.
        def validate_write!(params, creating:)
          if !creating && params.empty?
            raise ArgumentError.new("Program Resource update requires at least one field")
          end

          position = params[:position]
          if params.key?(:position) && (!position.is_a?(Integer) || !position.between?(0, 99))
            raise ArgumentError.new("Program Resource position must be an integer from 0 through 99")
          end

          has_upload_ticket = params.key?(:uploadTicket)
          has_upload_result = params.key?(:uploadResult)
          if has_upload_ticket != has_upload_result
            raise ArgumentError.new("upload_ticket and upload_result must be supplied together")
          end

          supplied_types = []
          supplied_types << :LINK if params.key?(:url)
          supplied_types << :TEXT if params.key?(:text)
          supplied_types << :FILE if has_upload_ticket
          raise ArgumentError.new("send content fields for only one Program Resource type") if supplied_types.length > 1

          type = params[:type]
          if supplied_types.any? && !type.nil? && supplied_types.first != type
            raise ArgumentError.new("content fields must match the selected Program Resource type")
          end
          if !creating && !type.nil? && supplied_types != [type]
            raise ArgumentError.new("changing a Program Resource type requires its replacement content")
          end
          return unless creating && (supplied_types.empty? || supplied_types.first != type)

          raise ArgumentError.new("create requires content fields for the selected Program Resource type")
        end
      end
    end
  end
end
