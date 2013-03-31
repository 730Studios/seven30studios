module ApplicationHelper
	def typekit_include_tag apikey
		javascript_include_tag("http://use.typekit.com/#{apikey}.js") +
		javascript_tag("try{Typekit.load()}catch(e){}")
	end
	
	def page_container_id(page_id)
		default_page_id = "parent-content_container"
		unless page_id.empty?
			page_id
		else
			default_page_id
		end
	end
end