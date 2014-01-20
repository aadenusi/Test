Feature: No Tickets page message is displayed on ADP

Background: Resize screen size to 320 view
	Given I am on a 320view
	Given I am on the GetMeIn ArtistDetailsPage with no tickets


Scenario: No tickets module is displayed
Then no tickets module is displayed

