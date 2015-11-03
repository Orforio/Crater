When(/^I (?:visit|am on) the "(.*?)" page$/) do |page|	
	visit translate_page(page)
end

When(/^I press the "(.*?)" link in the menu$/) do |link_text|
	within('nav') do
		click_link(link_text)
	end
end

Then(/^I am taken to the "(.*?)" page$/) do |page|
	expect(current_path).to eq(translate_page(page))
end

Then(/^I see the text "(.*?)"$/) do |text|
	expect(page).to have_text(text)
end
