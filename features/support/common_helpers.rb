module CommonHelpers
	def translate_page(name)
		case name
		when 'root'
			root_path
		when 'new setlist'
			new_setlist_path
		when 'invalid view setlist'
			'setlists/zzz'
		when 'view setlist'
			setlist_path("OEJ4nN") # HashIDs translates to 1234
		else
			fail!
		end
	end
end

World(CommonHelpers)
