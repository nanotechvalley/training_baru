module ApplicationHelper
	def list_categories
		str = "<ul>"
		Category.all.each do |category|
			str += "<li>#{category.name}</li>"
		end
		return str += "</ul>"
	end
end
