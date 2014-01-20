#Written By: Abolaji Adenusi
#Auto_Suggestion_Displays=================================================

When(/^I search for "(.*?)"$/) do |search_term|
	@header.search_textbox(search_term)
end

Then(/^Auto sugest list box is displayed$/) do
	@header.Autosuggestlist_is_visible
end

Then(/^the cross button is displayed$/) do
	@header.display_crossbutton
end
