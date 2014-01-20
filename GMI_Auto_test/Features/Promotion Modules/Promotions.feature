Feature: Promotions modules.

Background: Resize screen size to 320 view
	Given I am on a 320view
	Given I am on the GetMeIn Homepage

Scenario: As a user I would like to be able open last minute tickets through homepage

		When I click on the Lastminute tickets logo
			Then the lastminute page is displayed


Scenario: As a user I would like to read more information on fanguard on homepage

		When I click on the Fanguard module
			Then I should see the Fanguard lightbox