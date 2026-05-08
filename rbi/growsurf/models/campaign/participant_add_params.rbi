# typed: strong

module Growsurf
  module Models
    module Campaign
      class ParticipantAddParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Growsurf::Campaign::ParticipantAddParams,
              Growsurf::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

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

        sig do
          returns(
            T.nilable(
              Growsurf::Campaign::ParticipantAddParams::ReferralStatus::OrSymbol
            )
          )
        end
        attr_reader :referral_status

        sig do
          params(
            referral_status:
              Growsurf::Campaign::ParticipantAddParams::ReferralStatus::OrSymbol
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
            id: String,
            email: String,
            fingerprint: String,
            first_name: String,
            ip_address: String,
            last_name: String,
            metadata: T::Hash[Symbol, T.anything],
            referral_status:
              Growsurf::Campaign::ParticipantAddParams::ReferralStatus::OrSymbol,
            referred_by: String,
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          email:,
          fingerprint: nil,
          first_name: nil,
          ip_address: nil,
          last_name: nil,
          # Shallow custom metadata object.
          metadata: nil,
          referral_status: nil,
          # Referrer participant ID or email address.
          referred_by: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              email: String,
              fingerprint: String,
              first_name: String,
              ip_address: String,
              last_name: String,
              metadata: T::Hash[Symbol, T.anything],
              referral_status:
                Growsurf::Campaign::ParticipantAddParams::ReferralStatus::OrSymbol,
              referred_by: String,
              request_options: Growsurf::RequestOptions
            }
          )
        end
        def to_hash
        end

        module ReferralStatus
          extend Growsurf::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Growsurf::Campaign::ParticipantAddParams::ReferralStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT_PENDING =
            T.let(
              :CREDIT_PENDING,
              Growsurf::Campaign::ParticipantAddParams::ReferralStatus::TaggedSymbol
            )
          CREDIT_AWARDED =
            T.let(
              :CREDIT_AWARDED,
              Growsurf::Campaign::ParticipantAddParams::ReferralStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Growsurf::Campaign::ParticipantAddParams::ReferralStatus::TaggedSymbol
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
