When(/^I visit the "(.*?)" page$/) do |page|
	path = case page
		when 'root'
			root_path
		else
			fail!
		end
	
	visit(path)
end

Then(/^I see the text "(.*?)"$/) do |text|
	expect(page).to have_text(text)
end
