
When(/^I open Music tickets$/) do
find(:id,'ctl00_contentpane_2col').click
end

Then(/^I should see a Music event$/)do
page.assert_selector('#ctl00_contentpane_2col div div div ul.tickets li', :count)
end

#page.all('#rotate ul.thumbnails li img').each { |a|
 # a[:src].length.should  0
  #a[:alt].length.should > 0
  #end
#}
