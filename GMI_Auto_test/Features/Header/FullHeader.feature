Feature: GMI mobile Full Header.

Background: Resize screen size to 320 view
	Given I am on a 320view
	Given I am on the GetMeIn Homepage

Scenario: Full Header is displayed
	Then I should see GetMeIn Logo
		And I should see the search Icon
		And I should see the menu

Scenario: Auto sugestion search
	When I search for "Don"
		Then Auto sugest list box is displayed
		And the cross button is displayed

Scenario: Header Menu is displayed with links  
	When I click on HeaderMenu
		Then I should see all "EventCategories"
		And I should see My account link
		And I should see Customer service link
		And I should see Sell Tickets link
