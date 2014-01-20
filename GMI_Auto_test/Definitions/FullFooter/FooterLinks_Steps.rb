Then(/^I should see "(.*?)" in Quick links$/) do |search_term|
	@footer.QuickLinkItems_is_visible
end
 
When(/^I click on "(.*?)"$/) do |link_text|
	@footer.footerlink_item_is_clickable(link_text)
end

Then(/^I should see "(.*?)" in Legal Links$/) do |search_term|
	@footer.LegalLinkItems_is_visible
end

When(/^I scroll down to the footer$/) do
	@homepage.windowScroll_down
end

Then(/^I should see "(.*?)" in Company links$/) do |search_term|
search_term=["ABOUT US", "OUR COMPANY", "CONTACT US", "AFFILIATES", "FAN GUARD"] 
search_term.each do |y|
find(:xpath, "//html/body/form/div[3]/footer/div[1]/ul").should have_content(y)
end
end