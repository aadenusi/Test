class ArtistDetails
	def initialize (driver)
	@noTickets_Event = "http://qa1-www.getmein.com/rock-and-pop/billy-joel-tickets.html"
	@allTickets_Event = "http://qa1-www.getmein.com/rock-and-pop/one-direction-tickets.html"
	@artisinfo_id = "adp-bodycopy"
	@eventsBox_id = "eventsBox"
	@eventDate1_id = "eventDate1"
	@eventName1_id = "eventName1"
	@eventVenue1_class = "event-box__venuename"
	@ticketSummary1_id = "ticketSummary1"
	@orderDetailsHeader_id = "OrderHeader"
	@ticketsSellLink_class = "div.adp__content a.link--arrow"
	@ticketListingPage_class = "div.listsearch"
	@internationalEventsBox_id = "eventsBoxInternational"
	@noTicketsBox_class = "div.noresults"
	end

	# def visitNoTickets_ADP
	# 	page.visit @noTicketsEvent
	# end

	# def visitAllTickets_ADP
	# page.visit @allTickets_Event
	# end


	def artistinfo_isvisible
		find(:id, @artisinfo_id)
	end

	def ticketListingModule_isavailable
		find(:id, @eventsBox_id)
	end

	def eventDate_isVisible
		within(:id, @eventsBox_id) do
			find(:id, @eventDate1_id )
		end
	end

	def eventName_isVisible
		within(:id, @eventsBox_id) do
			find(:id, @eventName1_id)
		end
	end

	def eventVenue_isVisible
		within(:id, @eventsBox_id) do
			find(:id,@eventName1_id)do
		 		find(:class, @eventVenue1_class)
			end
		end
	end

	def ticketprice_isVisible
		within(:id, @eventsBox_id) do
			find(:id, @ticketSummary1_id)
		end
	end

	# def ticketRow_isClicked (id)
	# 	#within(:id, @eventsBox_id) do
	# 	within (:id, @tickets_box) do
	# 		find(:css, ".main-content.twelve ul li:nth-child(2)").click
	# 		end	
	#end

	

	def orderDetailsPage_isDisplayed
		find(:id, @orderDetailsHeader_id)
	end

	def ticketsSellLink_isDisplayed
		find(:css, @ticketsSellLink_class).click
	end
	
	def ticketListingPage_isDisplayed
		find(:css, @ticketListingPage_class)
	end

	def internationalEventsBox_isDisplayed(adp_text)
		
		def internationalbox
			find('#ctl00_contentpane_2col #eventsBoxInternational li:nth(1)')
			'#eventsBox ul[data-role="event-list"'
		end
		search = [eventbox, internationalbox]
		  all('#ctl00_contentpane_2col #eventsBoxInternational li:nth(1)').each do |adpeventid|
		 if adpeventid.text == adp_text
		adpeventid.click
		end
	end
	end

	def noTicketsBox_isDisplayed
		find(:class, @noTicketsBox_class)
	end

	def showMoreLink_isClicked
		find(:css, 'div.adp__content .adp__content__toggle').click
	end

	def showLessLink_isClicked
		find(:css, 'div.adp__content .adp__content__toggle.is_active').click
	end

end
