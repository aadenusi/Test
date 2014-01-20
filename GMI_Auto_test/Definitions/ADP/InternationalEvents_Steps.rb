

Given(/^the international events module is displayed$/) do
  @artist_details_page.internationalEventsBox_isDisplayed
end

# When(/^the first row of events is clicked$/) do
#   # @artist_details_page.ticketRow_isClicked
#   @artist_details_page.ticketRow_isClicked (@internationalEventsBox_id)
# end


When(/^the first row of events is clicked in the "(.*?)"$/) do |adp_text|
  @artist_details_page.internationalEventsBox_isDisplayed(adp_text)
end

When(/^back to top link is clicked$/) do
find(:css, '#ctl00_contentpane_2col .back-to-top').click
end

Then(/^the top of the page is displayed$/) do

end

When(/^International Ticket list module is available$/) do
@artist_details_page.internationalEventsBox_isDisplayed
end
