After do |scenario|
	if scenario.failed?
		save_page('features/results/failure' + Time.now.to_s + '.html')
	end
end