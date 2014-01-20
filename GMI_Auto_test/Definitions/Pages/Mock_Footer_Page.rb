
class Footer
	def initialize (page)
		@page = page
		@search_term_QuickLinks = ["MY ACCOUNT", "HOW TO BUY", "HOW TO SELL", "FAQS", "SELL TICKETS", "CITY GUIDE", "VENUES", "NEWS GOSSIP"]
		@QuickLinkForm_id = "//*[@id='ctl00_ucFooter_footerlinks']/li/div[2]"
		@search_term_legal = ["BUYER AGREEMENT", "SELLER AGREEMENT", "PRIVACY POLICY", "COOKIE POLICY"]
		@LegalLinkForm_id = "//*[@id='ctl00_ucFooter_footerlinks']/li/div[3]"
	end

	def QuickLinkItems_is_visible
		@search_term_QuickLinks.each do |quicklinkitems|
		find(:xpath, @QuickLinkForm_id).should have_content(quicklinkitems)
		end
	end

	def LegalLinkItems_is_visible
		@search_term_legal.each do |legalitems|
		find(:xpath, @LegalLinkForm_id).should have_content(legalitems)
		end
	end
def copyright_Is_Visible
	find(:css, '#ctl00_ucFooter_footerContent .footer__copyright__text')
end
	
	def FB_TW_Social_Icons_Is_Visible
		find(:css, '#ctl00_ucFooter_footerContent .social-mobile .social1')
		find(:css, '#ctl00_ucFooter_footerContent .social-mobile .social2')
	end

	def footerlink_item_is_clickable (link_text)
		# all(:css,'.page-footer div.container.mobile-tabs ul li:nth-child(2)').each do |footerlinkitem|
		all(:css,'.page-footer div.container.mobile-tabs ul li').each do |footerlinkitem|
			if footerlinkitem.text == link_text
				footerlinkitem.click
			end
		end
	end
end


