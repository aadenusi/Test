#LastMinute==============================================================================
When(/^I click on the Lastminute tickets logo$/) do
 find(:id,"ctl00_centerContent_gmiLastMinuteTickets_Image1").click
end

Then(/^the lastminute page is displayed$/) do
  page.should have_selector(:id,"ctl00_centerContent_LastMinuteInfo_lblTitle")
end

#Fanguard==============================================================================

When (/^I click on the Fanguard module$/) do
	find(:id,"ctl00_centerContent_imgFanguard").click		
end

Then (/^I should see the Fanguard lightbox$/)do
page.should have_selector(:id,"ctl00_ucLeftPanel_gmiFanGuardPopup_imgFanguard")
end