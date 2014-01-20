

Then(/^artist info is displayed on the ADP$/) do
@artist_details_page.artistinfo_isvisible
end


When(/^I click on have tickets to sell link$/) do
@artist_details_page.ticketsSellLink_isDisplayed
end

Then(/^ticket listing page is displayed$/) do
@artist_details_page.ticketListingPage_isDisplayed
end

Then(/^can be expanded$/) do
 @artist_details_page.showMoreLink_isClicked
end

Then(/^can be collapsed$/) do
@artist_details_page.showLessLink_isClicked
end












