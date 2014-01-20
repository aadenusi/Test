Given(/^I click on the search button$/) do
  find(:xpath, "//header/div[2]//div[1]/div[1]/div[2]/div[1]/a").click
end

Then(/^I should see the menu$/) do
	@header.menu_is_visible
end

Then(/^I should see GetMeIn Logo$/) do
  	@header.logo_is_visible
end

Then(/^I should see the search Icon$/) do
  	@header.search_is_visible
end