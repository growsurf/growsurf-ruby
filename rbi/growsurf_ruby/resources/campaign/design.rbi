# typed: strong

module GrowsurfRuby
  module Resources
    class Campaign
      class Design
        # Icon configuration for the participant Resources destination.
        ResourcesIcon = T.type_alias do
          {
            type: T.nilable(T.any(String, Symbol)),
            imageUrl: T.nilable(String)
          }
        end

        # Participant presentation settings for Resources. Each label is limited to 100
        # characters; imageUrl is limited to 500. Resource items use Program Resources operations.
        Resources = T.type_alias do
          {
            isPublicDisplayed: T.nilable(T::Boolean),
            title: T.nilable(String),
            viewResourcesLinkText: T.nilable(String),
            backLinkText: T.nilable(String),
            copyButtonText: T.nilable(String),
            copiedText: T.nilable(String),
            icon: T.nilable(ResourcesIcon)
          }
        end

        # Retrieves a program's design configuration — the same surface as the dashboard
        # Program Editor's **Design** tab: the GrowSurf window layout, header, share
        # channels + invite, signup form, Resources presentation, portal/landing pages, theme styling, and the
        # referral/affiliate summary + status sections. `referredExperience` includes the Claim
        # Offer Popup for both program types, with its colors under
        # `theme.referredExperienceOfferPopup`.
        # `participantAvatarStyle` is `CHARACTERS`, `INITIALS`, `ANIMALS`, or `GRADIENT`; missing or
        # unknown values mean `INITIALS`.
        # `payoutDestinationConfirmation` is omitted when no confirmation fields are stored. Stored
        # `null` fields are returned as `null`; omitted and `null` fields use localized defaults.
        sig do
          params(
            id: String,
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T::Hash[Symbol, T.anything])
        end
        def retrieve(
          # GrowSurf program ID.
          id,
          request_options: {}
        )
        end

        # Updates a program's design configuration, including the payout-destination confirmation
        # page copy and the Claim Offer Popup under `referredExperience`. Only the fields you send are
        # changed; anything you leave out is untouched (arrays such as `signup.fields` replace
        # wholesale). Unknown fields, fields not available for the program type, and invalid
        # values return a `400`. Landing-page custom code and JavaScript are not editable via the
        # API.
        sig do
          params(
            id: String,
            body: T::Hash[Symbol, T.anything],
            request_options: GrowsurfRuby::RequestOptions::OrHash
          ).returns(T::Hash[Symbol, T.anything])
        end
        def update(
          # GrowSurf program ID.
          id,
          # Partial design configuration to merge. `resources` accepts visibility, title,
          # list/back/copy labels, and an icon with type `DEFAULT`, `IMAGE`, or `NONE`.
          body,
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
