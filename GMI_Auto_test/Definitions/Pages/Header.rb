class Header
	def initialize(page)
		@page = page
		@menu_xpath = "//*[@id='header']/div/span"
		@logo_xpath = "//*[@id='ctl00_ucHeader_imgGetMeIn']"
		@search_xpath = "//*[@id='header']/div/div[2]/div/a"
	    @search_textbox = "ctl00_ucHeader_txtSearch"
		@autosuggest_id = "//*[@id='autocomplete_default']"
		@searchName_don_hills =  "Don Hill's"
		#@crossbutton_xpath = "//*[@id='ctl00_ucHeader_pnlSearch']/span"
		@crossbutton_xpath = "//*[@id='ctl00_ucHeader_pnlSearch']/span"
		@lnkMobileSell_id = "ctl00_lnkMobileSell"
		@my_account_xpath = "//*[@id='subnav_c1']/li[6]/a"
		@customerService_FAQ_Xpath = "//*[@id='subnav_c1']/li[7]/a"
		@my_account = "MY ACCOUNT"
		@CUSTOMER_SERVICE_FAQS = "CUSTOMER SERVICE/FAQS" 	
		@search_term=['MUSIC', 'FESTIVALS', 'SPORTS', 'ARTS AND THEATRE', 'COMEDY']
		@eventcategories_xpath = "//html/body/form/div[5]/div/ul"
	end
	
		def menu_is_visible
		@page.should have_xpath(@menu_xpath)
		end

	def logo_is_visible
		@page.should have_xpath(@logo_xpath)
	end

	def search_is_visible
		@page.should have_selector(:xpath, @search_xpath)
	end

	def get_menu
		find(:xpath, @menu_xpath)
	end
	
	def get_search
		find(:xpath, @search_xpath)
	end

	def search_textbox (search_item)
		fill_in @search_textbox, with:search_item
	end

	def Autosuggestlist_is_visible
		find(:xpath, @autosuggest_id, text:@searchName_don_hills).value
		#find(:xpath, @autosuggest_id, "Don Hill's").value
	end

	def event_categories_visible
	 @search_term.each do |name|
     	find(:xpath, @eventcategories_xpath).should have_content(name)
	end
		end

	def display_crossbutton
		@page.should have_xpath(@crossbutton_xpath)
	end

	def customer_service_faq
		find(:xpath, @customerService_FAQ_Xpath, text: @CUSTOMER_SERVICE_FAQS).value
	end

	def sell_tickets_link
	 find(:id, @lnkMobileSell_id).click
	end

	def my_account  
	find(:xpath, @my_account_xpath, text:@my_account).value
	end
end