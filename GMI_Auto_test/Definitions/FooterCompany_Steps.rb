#When(/^I scroll down to the footer$/) do
 # page.execute_script "window.scrollBy(0,10000)"
#end

#When(/^I click on Company$/) do
 # find(:xpath, "//*[@id='ctl00_ucFooter_divFooterLinks']/div/ul/li[1]").click
#end

#Then(/^I should see "(.*?)" in Company links$/) do |search_term|
#search_term=["ABOUT US", "OUR COMPANY", "CONTACT US", "AFFILIATES", "FAN GUARD"] 
#search_term.each do |y|
#find(:xpath, "//html/body/form/div[3]/footer/div[1]/ul").should have_content(y)
#end
#end