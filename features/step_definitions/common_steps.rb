When(/^I (?:visit|am on) the "(.*?)" page$/) do |page|	
	visit translate_page(page)
end

When(/^I press the "(.*?)" link in the menu$/) do |link_text|
	within('nav') do
		click_link(link_text)
	end
end

When(/^I click the "(.*?)" button$/) do |button|
	click_button(button)
end

Then(/^I am taken to the "(.*?)" page$/) do |page|
	expect(current_path).to eq(translate_page(page))
end

Then(/^I see the text "(.*?)"$/) do |text|
	expect(page).to have_text(text)
end

Then(/^I see the error "(.*?)"$/) do |error|
	within('.alert-danger') do
		expect(page).to have_text(error)
	end
end
