
Then(/^I should see the security marks on the footer$/) do
   page.should have_xpath("//*[@id='composite-container']/footer/div[2]/div")
end

Then(/^I should see the FB_TW_Social_Icons_Is_Visible on the footer$/) do
  @footer.FB_TW_Social_Icons_Is_Visible
end

Then(/^the footer should include the copyright$/) do
	@footer.copyright_Is_Visible
 end

