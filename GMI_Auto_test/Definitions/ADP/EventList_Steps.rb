
When(/^Ticket list module is available$/) do
@artist_details_page.ticketListingModule_isavailable
end

Then(/^Date is displayed in the event list$/) do
@artist_details_page.eventDate_isVisible
end

Then(/^Event name is displayed$/) do
@artist_details_page.eventName_isVisible
end

Then(/^Venue name is displayed$/) do
@artist_details_page.eventVenue_isVisible
end

Then(/^ticket price is displayed$/) do
@artist_details_page.ticketprice_isVisible
end

When(/^a ticket row is clicked$/) do
@artist_details_page.ticketRow_isClicked
end

Then(/^the event details page is displayed$/) do
  @artist_details_page.orderDetailsPage_isDisplayed
end
