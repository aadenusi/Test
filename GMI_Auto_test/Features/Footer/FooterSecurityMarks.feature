Feature: GMI mobile Footer Security Marks

Background: Resize screen size to 320 view
	#Given I am on the browerstack
	Given I am on a 320view
	Given I am on the GetMeIn Homepage

Scenario: Security marks are displayed on the footer
	When I scroll down to the footer
		Then I should see the security marks on the footer

Scenario: Social icons are displayed on the footer
	When I scroll down to the footer
		Then I should see the FB_TW_Social_Icons_Is_Visible on the footer
		
Scenario: Footer text is displayed
	When I scroll down to the footer
		Then the footer should include the copyright
		
		