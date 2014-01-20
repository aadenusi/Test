Feature: International Events module is displayed

Background: Resize screen size to 320 view
	Given I am on a 320view
	Given I am on the GetMeIn ArtistDetailsPage

	Scenario: Clicking the international events module displays the EDP
	Given the international events module is displayed
	When the first row of events is clicked in the "eventsBoxInternational"
	Then the event details page is displayed

	Scenario: Back to top link navigates to the top of the page
	When back to top link is clicked
	Then the top of the page is displayed

	Scenario: Event info is displayed
	When International Ticket list module is available
	Then Date is displayed in the event list
	And Event name is displayed
	And Venue name is displayed
	And ticket price is displayed