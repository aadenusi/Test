Then(/^I should see a at least one event Image and Content$/) do
	page.assert_selector('#rotate ul.thumbnails li', :count)
	page.all('#rotate ul.thumbnails li img').each { |a|
  	a[:src].length.should > 0
  	a[:alt].length.should > 0
}
end