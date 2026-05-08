# typed: strong

module Growsurf
  module Models
    module Campaign
      class ParticipantUpdateParams < Growsurf::Internal::Type::BaseModel
        extend Growsurf::Internal::Type::RequestParameters::Converter
        include Growsurf::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Growsurf::Campaign::ParticipantUpdateParams,
              Growsurf::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :participant_id_or_email

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

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
              Growsurf::Campaign::ParticipantUpdateParams::ReferralStatus::OrSymbol
            )
          )
        end
        attr_reader :referral_status

        sig do
          params(
            referral_status:
              Growsurf::Campaign::ParticipantUpdateParams::ReferralStatus::OrSymbol
          ).void
        end
        attr_writer :referral_status

        sig { returns(T.nilable(String)) }
        attr_reader :referred_by

        sig { params(referred_by: String).void }
        attr_writer :referred_by

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :unsubscribed

        sig { params(unsubscribed: T::Boolean).void }
        attr_writer :unsubscribed

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :vanity_keys

        sig { params(vanity_keys: T::Array[String]).void }
        attr_writer :vanity_keys

        sig do
          params(
            id: String,
            participant_id_or_email: String,
            email: String,
            first_name: String,
            last_name: String,
            metadata: T::Hash[Symbol, T.anything],
            referral_status:
              Growsurf::Campaign::ParticipantUpdateParams::ReferralStatus::OrSymbol,
            referred_by: String,
            unsubscribed: T::Boolean,
            vanity_keys: T::Array[String],
            request_options: Growsurf::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          participant_id_or_email:,
          email: nil,
          first_name: nil,
          last_name: nil,
          # Shallow custom metadata object.
          metadata: nil,
          referral_status: nil,
          referred_by: nil,
          unsubscribed: nil,
          vanity_keys: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              participant_id_or_email: String,
              email: String,
              first_name: String,
              last_name: String,
              metadata: T::Hash[Symbol, T.anything],
              referral_status:
                Growsurf::Campaign::ParticipantUpdateParams::ReferralStatus::OrSymbol,
              referred_by: String,
              unsubscribed: T::Boolean,
              vanity_keys: T::Array[String],
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
                Growsurf::Campaign::ParticipantUpdateParams::ReferralStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT_PENDING =
            T.let(
              :CREDIT_PENDING,
              Growsurf::Campaign::ParticipantUpdateParams::ReferralStatus::TaggedSymbol
            )
          CREDIT_AWARDED =
            T.let(
              :CREDIT_AWARDED,
              Growsurf::Campaign::ParticipantUpdateParams::ReferralStatus::TaggedSymbol
            )
          CREDIT_EXPIRED =
            T.let(
              :CREDIT_EXPIRED,
              Growsurf::Campaign::ParticipantUpdateParams::ReferralStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Growsurf::Campaign::ParticipantUpdateParams::ReferralStatus::TaggedSymbol
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
