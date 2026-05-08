# typed: strong

module Growsurf
  module Resources
    class Campaign
      # Affiliate transaction, commission, and payout operations.
      class Commission
        # Removes a pending participant commission.
        sig do
          params(
            commission_id: String,
            id: String,
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(Growsurf::Models::Campaign::CommissionDeleteResponse)
        end
        def delete(
          # Participant commission ID.
          commission_id,
          # GrowSurf program ID.
          id:,
          request_options: {}
        )
        end

        # Approves a pending participant commission so it can become eligible for payout.
        sig do
          params(
            commission_id: String,
            id: String,
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(Growsurf::Models::Campaign::CommissionApproveResponse)
        end
        def approve(
          # Participant commission ID.
          commission_id,
          # GrowSurf program ID.
          id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Growsurf::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
