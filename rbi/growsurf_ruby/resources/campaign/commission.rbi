# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      # Affiliate transaction, commission, and payout operations.
      class Commission
        # **Affiliate programs only.** Removes a pending participant commission.
        sig do
          params(
            commission_id: String,
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::CommissionDeleteResponse)
        end
        def delete(
          # Participant commission ID.
          commission_id,
          # GrowSurf program ID.
          id:,
          request_options: {}
        )
        end

        # **Affiliate programs only.** Approves a pending participant commission so it can
        # become eligible for payout.
        sig do
          params(
            commission_id: String,
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(GrowsurfRuby::Models::Campaign::CommissionApproveResponse)
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
        sig { params(client: GrowsurfRuby::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
