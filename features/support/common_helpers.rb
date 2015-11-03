module CommonHelpers
	def translate_page(name)
		case name
		when 'root'
			root_path
		when 'new setlist'
			new_setlist_path
		else
			fail!
		end
	end
end

World(CommonHelpers)
