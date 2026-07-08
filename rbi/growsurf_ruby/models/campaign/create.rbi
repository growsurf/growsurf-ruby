# typed: strong

module GrowsurfRuby
  module Models
    module Campaign
      class Create < GrowsurfRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              GrowsurfRuby::Campaign::Create,
              GrowsurfRuby::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint

        sig { params(fingerprint: String).void }
        attr_writer :fingerprint

        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { params(ip_address: String).void }
        attr_writer :ip_address

        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # Shallow custom metadata object.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, T.anything]).void }
        attr_writer :metadata

        # Optional app-install scoped identifier for native mobile anti-fraud. Recommended
        # for mobile participant creation and mobile participant token flows. The official
        # mobile SDKs generate this as a lowercase UUID.
        sig { returns(T.nilable(String)) }
        attr_reader :mobile_instance_id

        sig { params(mobile_instance_id: String).void }
        attr_writer :mobile_instance_id

        # The referral credit status; only meaningful when `referred_by` resolves to a
        # referrer. When omitted it is derived from the program's referral trigger
        # (`CREDIT_AWARDED`, `CREDIT_PENDING`, or `CREDIT_EXPIRED`); left unset when no
        # referrer resolves.
        sig do
          returns(
            T.nilable(GrowsurfRuby::Campaign::Create::ReferralStatus::OrSymbol)
          )
        end
        attr_reader :referral_status

        sig do
          params(
            referral_status:
              GrowsurfRuby::Campaign::Create::ReferralStatus::OrSymbol
          ).void
        end
        attr_writer :referral_status

        # Referrer participant ID or email address.
        sig { returns(T.nilable(String)) }
        attr_reader :referred_by

        sig { params(referred_by: String).void }
        attr_writer :referred_by

        sig do
          params(
            email: String,
            fingerprint: String,
            first_name: String,
            ip_address: String,
            last_name: String,
            metadata: T::Hash[Symbol, T.anything],
            mobile_instance_id: String,
            referral_status:
              GrowsurfRuby::Campaign::Create::ReferralStatus::OrSymbol,
            referred_by: String
          ).returns(T.attached_class)
        end
        def self.new(
          email:,
          fingerprint: nil,
          first_name: nil,
          ip_address: nil,
          last_name: nil,
          # Shallow custom metadata object.
          metadata: nil,
          # Optional app-install scoped identifier for native mobile anti-fraud. Recommended
          # for mobile participant creation and mobile participant token flows. The official
          # mobile SDKs generate this as a lowercase UUID.
          mobile_instance_id: nil,
          # The referral credit status; only meaningful when `referred_by` resolves to a
          # referrer. When omitted it is derived from the program's referral trigger
          # (`CREDIT_AWARDED`, `CREDIT_PENDING`, or `CREDIT_EXPIRED`); left unset when no
          # referrer resolves.
          referral_status: nil,
          # Referrer participant ID or email address.
          referred_by: nil
        )
        end

        sig do
          override.returns(
            {
              email: String,
              fingerprint: String,
              first_name: String,
              ip_address: String,
              last_name: String,
              metadata: T::Hash[Symbol, T.anything],
              mobile_instance_id: String,
              referral_status:
                GrowsurfRuby::Campaign::Create::ReferralStatus::OrSymbol,
              referred_by: String
            }
          )
        end
        def to_hash
        end

        module ReferralStatus
          extend GrowsurfRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, GrowsurfRuby::Campaign::Create::ReferralStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT_PENDING =
            T.let(
              :CREDIT_PENDING,
              GrowsurfRuby::Campaign::Create::ReferralStatus::TaggedSymbol
            )
          CREDIT_AWARDED =
            T.let(
              :CREDIT_AWARDED,
              GrowsurfRuby::Campaign::Create::ReferralStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                GrowsurfRuby::Campaign::Create::ReferralStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
