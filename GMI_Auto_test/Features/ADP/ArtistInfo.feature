Feature: Artist info displayed on ADP

Background: Resize screen size to 320 view
	Given I am on a 320view
	Given I am on the GetMeIn ArtistDetailsPage

Scenario: Artist info is displayed on the ADP
Then artist info is displayed on the ADP
And can be expanded
And can be collapsed

Scenario: Ticket listing page is displayed
When I click on have tickets to sell link
Then ticket listing page is displayed

