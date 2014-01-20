
class Homepage
	
	def initialize (driver)
			@page = page
		@window_scroll = "window.scrollBy(0,10000)"
	end

	def visit
		@page.visit 'http://qa1-www.getmein.com.winsys.tmcs'
		#@page.visit 'http://staging-www.getmein.com'
	end
	
	def windowScroll_down
		page.execute_script @window_scroll
	end
end