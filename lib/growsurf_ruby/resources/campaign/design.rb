# frozen_string_literal: true

module GrowsurfRuby
  module Resources
    class Campaign
      class Design
        # Retrieves a program's configured design fields: the dashboard Program Editor's **Design**
        # tab plus the payout-destination confirmation page copy configured from payout integration
        # cards. This includes the GrowSurf window layout, header, share channels and invites,
        # signup form, Resources presentation, portal and landing pages, theme styling, and referral
        # or affiliate summary and status sections. `referredExperience` includes the Claim Offer Popup for both program
        # types, with its colors under `theme.referredExperienceOfferPopup`.
        # `participantAvatarStyle` is `CHARACTERS`, `INITIALS`, `ANIMALS`, or `GRADIENT`; missing or
        # unknown values mean `INITIALS`.
        # `payoutDestinationConfirmation` is omitted when no confirmation fields are stored. Stored
        # `null` fields are returned as `null`; omitted and `null` fields use localized defaults.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Hash{Symbol=>Object}]
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["campaign/%1$s/design", id],
            model: GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown],
            options: params[:request_options]
          )
        end

        # Updates a program's design configuration, including the payout-destination confirmation
        # page copy and the Claim Offer Popup under `referredExperience`. Only the fields you send
        # are changed;
        # anything you leave out is untouched (arrays such as `signup.fields` replace wholesale).
        # Unknown fields, fields not available for the program type, and invalid values return a
        # `400`. Landing-page custom code and JavaScript are not editable via the API.
        #
        # @overload update(id, body, request_options: {})
        #
        # @param id [String] GrowSurf program ID.
        #
        # @param body [Hash{Symbol=>Object}] Partial design configuration to merge. `resources`
        #   accepts `isPublicDisplayed`, `title`, `viewResourcesLinkText`, `backLinkText`,
        #   `copyButtonText`, `copiedText`, and `icon` (`type`: `DEFAULT`, `IMAGE`, or `NONE`, plus
        #   `imageUrl` for `IMAGE`). Resource items use the Program Resources operations.
        #
        # @param request_options [GrowsurfRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Hash{Symbol=>Object}]
        def update(id, body, params = {})
          @client.request(
            method: :patch,
            path: ["campaign/%1$s/design", id],
            body: body,
            model: GrowsurfRuby::Internal::Type::HashOf[GrowsurfRuby::Internal::Type::Unknown],
            options: params[:request_options]
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
