# typed: strong

module GrowsurfRuby
  module Models
    # Either decide a pending application with `status`, or move a denied application's
    # reapplication window with `reapply_allowed_at`. Provide exactly one of those
    # fields.
    class CampaignReviewAffiliateApplicationParams < GrowsurfRuby::Internal::Type::BaseModel
      extend GrowsurfRuby::Internal::Type::RequestParameters::Converter
      include GrowsurfRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            GrowsurfRuby::CampaignReviewAffiliateApplicationParams,
            GrowsurfRuby::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :application_id

      # When denying, let the applicant reapply right away instead of waiting out the
      # program's reapplication cooldown. Only valid when `status` is `DENIED`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_immediate_reapply

      sig { params(allow_immediate_reapply: T::Boolean).void }
      attr_writer :allow_immediate_reapply

      # For an already-denied application, move the reapplication window to this earlier
      # time, in Unix milliseconds. Send without `status`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :reapply_allowed_at

      sig { params(reapply_allowed_at: Integer).void }
      attr_writer :reapply_allowed_at

      # Short reason recorded with a denial. Only valid when `status` is `DENIED`.
      # Maximum 255 characters.
      sig { returns(T.nilable(String)) }
      attr_reader :rejection_reason

      sig { params(rejection_reason: String).void }
      attr_writer :rejection_reason

      # Private note recorded with a denial. Only valid when `status` is `DENIED`; never
      # shown to the applicant. Maximum 500 characters.
      sig { returns(T.nilable(String)) }
      attr_reader :review_note

      sig { params(review_note: String).void }
      attr_writer :review_note

      # The decision. `APPROVED` enrolls the applicant as an affiliate; `DENIED` closes
      # the application.
      sig do
        returns(
          T.nilable(
            GrowsurfRuby::CampaignReviewAffiliateApplicationParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            GrowsurfRuby::CampaignReviewAffiliateApplicationParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          id: String,
          application_id: String,
          allow_immediate_reapply: T::Boolean,
          reapply_allowed_at: Integer,
          rejection_reason: String,
          review_note: String,
          status:
            GrowsurfRuby::CampaignReviewAffiliateApplicationParams::Status::OrSymbol,
          request_options: GrowsurfRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        application_id:,
        # When denying, let the applicant reapply right away instead of waiting out the
        # program's reapplication cooldown.
        allow_immediate_reapply: nil,
        # For an already-denied application, move the reapplication window to this earlier
        # time, in Unix milliseconds. Send without `status`.
        reapply_allowed_at: nil,
        # Short reason recorded with a denial. Only valid when `status` is `DENIED`.
        # Maximum 255 characters.
        rejection_reason: nil,
        # Private note recorded with a denial. Only valid when `status` is `DENIED`; never
        # shown to the applicant. Maximum 500 characters.
        review_note: nil,
        # The decision. `APPROVED` enrolls the applicant as an affiliate; `DENIED` closes
        # the application.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            application_id: String,
            allow_immediate_reapply: T::Boolean,
            reapply_allowed_at: Integer,
            rejection_reason: String,
            review_note: String,
            status:
              GrowsurfRuby::CampaignReviewAffiliateApplicationParams::Status::OrSymbol,
            request_options: GrowsurfRuby::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The decision. `APPROVED` enrolls the applicant as an affiliate; `DENIED` closes
      # the application.
      module Status
        extend GrowsurfRuby::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              GrowsurfRuby::CampaignReviewAffiliateApplicationParams::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(
            :APPROVED,
            GrowsurfRuby::CampaignReviewAffiliateApplicationParams::Status::TaggedSymbol
          )
        DENIED =
          T.let(
            :DENIED,
            GrowsurfRuby::CampaignReviewAffiliateApplicationParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              GrowsurfRuby::CampaignReviewAffiliateApplicationParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
