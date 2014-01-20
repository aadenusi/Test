Feature: Event list is displayed on the ADP

Background: Resize screen size to 320 view
	Given I am on a 320view
	Given I am on the GetMeIn ArtistDetailsPage

	Scenario: Event info is displayed
	When Ticket list module is available
	Then Date is displayed in the event list
	And Event name is displayed
	And Venue name is displayed
	And ticket price is displayed
	
	Scenario: Event details page is displayed
	When a ticket row is clicked
	Then the event details page is displayed

