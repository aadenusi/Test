Feature: GMI mobile Footer.

Background: Resize screen size to 320 view
	Given I am on a 320view
	Given I am on the GetMeIn Homepage
	When I scroll down to the footer

Scenario: Company Links are displayed on the footer
	When I click on "Company"
	Then I should see "Company Links" in Company links
		
Scenario: Quick Links are displayed on the footer
	When I click on "Quick Links"
	Then I should see "Quick Links" in Quick links

Scenario: Legal links are displayed on the footer
	When I click on "Legal"
	Then I should see "Legal Links" in Legal Links