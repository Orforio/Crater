When(/^I input valid setlist data$/) do
	within('#new_setlist') do
		fill_in 'Title', with: 'Mixed Compilation 1'
		fill_in 'Author', with: 'DJ 1'
		fill_in 'Genre', with: 'Testcore'
	end
end

When(/^I input invalid setlist data$/) do
	within('#new_setlist') do
		fill_in 'Title', with: 'Mixed Compilation 1'
		fill_in 'Author', with: "A" * 256
	end
end

Then(/^a new setlist with a valid edit key is created$/) do
	expect(page).to have_text(/Edit key: [a-z0-9]{6}/) 
end