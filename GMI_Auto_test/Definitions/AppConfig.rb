Given(/^I am on a (\d+)view$/) do |arg1|
 	if Capybara.current_driver == :selenium
	window = Capybara.current_session.driver.browser.manage.window
  	window.resize_to(400, 1200) 
  	@homepage=Homepage.new(Capybara.current_session.driver)
  	@header=Header.new(Capybara.current_session.driver)
 	@footer=Footer.new(Capybara.current_session.driver)
 	@artist_details_page=ArtistDetails.new(Capybara.current_session.driver)
    end
end

# caps = Selenium::WebDriver::Remote::Capabilities.new
# caps[:browserName] = "iPhone"
# caps["platform"] = "MAC"
# caps["device"] = "iPhone 5"
# caps["browserstack.debug"] = "true"
# caps[:name] = "Testing Selenium 2 with Ruby on BrowserStack"

# driver = Selenium::WebDriver.for(:remote,
#   :url => "http://ajay83:4D6htcX4AtsX6AyaExyw@hub.browserstack.com/wd/hub",
#   :desired_capabilities => caps)
# driver.navigate.to "http://www.getmein.com"


Given(/^I am on the GetMeIn Homepage$/) do
	@homepage.visit
  end
#aj test

Given(/^I am on the GetMeIn ArtistDetailsPage$/) do
	#@artist_details_page.visitAllTickets_ADP
	visit 'http://qa1-www.getmein.com/rock-and-pop/one-direction-tickets.html'
	#visit 'http://qa1-www.getmein.com/rock-and-pop/rod-stewart-tickets.html'
	end

Given(/^I am on the GetMeIn ArtistDetailsPage with no tickets$/) do
visit 'http://qa1-www.getmein.com/rock-and-pop/billy-joel-tickets.html'
#@artist_details_page.visitNoTickets_ADP
end

