#Header_Menu==========================================================

When(/^I click on HeaderMenu$/) do
 	 @header.get_menu.click
 end

Then(/^I should see all "(.*?)"$/) do |search_term|
	@header.event_categories_visible
end

Then(/^I should see My account link$/) do
  	@header.my_account
end

Then(/^I should see Customer service link$/) do
 	 @header.customer_service_faq
end

Then(/^I should see Sell Tickets link$/) do
	  @header.sell_tickets_link
end