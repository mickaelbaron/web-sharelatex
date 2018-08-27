define [
	"main/project-list/index"
	"main/user-details"
	"main/account-settings"
	"main/clear-sessions"
	"main/account-upgrade"
	"main/plans"
	"main/group-members"
	"main/scribtex-popup"
	"main/event"
	"main/bonus"
	"main/system-messages"
	"main/translations"
	"main/subscription-dashboard"
	"main/new-subscription"
	"main/annual-upgrade"
	"main/announcements"
	"main/register-users"
	"main/subscription/domain-subscription-join-controller"
	"main/subscription/team-invite-controller"
	"main/contact-us"
	"main/learn"
	"main/affiliations/components/affiliationForm"
	"main/affiliations/controllers/UserAffiliationsController"
	"main/affiliations/factories/UserAffiliationsDataService"
	"main/keys"
	"analytics/AbTestingManager"
	"directives/asyncForm"
	"directives/stopPropagation"
	"directives/focus"
	"directives/equals"
	"directives/eventTracking"
	"directives/fineUpload"
	"directives/onEnter"
	"directives/selectAll"
	"directives/maxHeight"
	"directives/creditCards"
	"services/queued-http"
	"services/validateCaptcha"
	"filters/formatDate"
	"components/inputSuggestions"
	"__MAIN_CLIENTSIDE_INCLUDES__"
], () ->
	angular.module('SharelatexApp').config(
		($locationProvider) ->
			try
				$locationProvider.html5Mode({
					enabled: true,
					requireBase: false,
					rewriteLinks: false
				})
			catch e
				console.error "Error while trying to fix '#' links: ", e
	)
	angular.bootstrap(
		document.body,
		["SharelatexApp"]
	)
