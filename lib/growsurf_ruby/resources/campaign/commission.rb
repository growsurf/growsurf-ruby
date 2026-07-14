# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      # Affiliate transaction, commission, and payout operations.
      class Commission
        # **Affiliate programs only.** Removes a pending participant commission.
        #
        # @overload delete(commission_id, id:, request_options: {})
        #
        # @param commission_id [String] Participant commission ID.
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::CommissionDeleteResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::CommissionDeleteParams
        def delete(commission_id, params)
          parsed, options = GrowsurfRuby::Campaign::CommissionDeleteParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["campaign/%1$s/commission/%2$s", id, commission_id],
            model: GrowsurfRuby::Models::Campaign::CommissionDeleteResponse,
            options: options
          )
        end

        # **Affiliate programs only.** Approves a pending participant commission so it can
        # become eligible for payout.
        #
        # @overload approve(commission_id, id:, request_options: {})
        #
        # @param commission_id [String] Participant commission ID.
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [GrowsurfRuby::Models::Campaign::CommissionApproveResponse]
        #
        # @see GrowsurfRuby::Models::Campaign::CommissionApproveParams
        def approve(commission_id, params)
          parsed, options = GrowsurfRuby::Campaign::CommissionApproveParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["campaign/%1$s/commission/%2$s/approve", id, commission_id],
            model: GrowsurfRuby::Models::Campaign::CommissionApproveResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [GrowsurfRuby::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
