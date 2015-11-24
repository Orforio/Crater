FactoryGirl.define do
  factory :setlist do
    sequence(:title) { |i| "Mixed Compilation #{i}" }
		sequence(:author) { |i| "DJ #{i}" }
		genre 'Testcore'
		
		factory :setlist_with_known_view_key do
			id 1234
			title 'Mixed Compilation With Known View Key'
		end
		
		factory :setlist_with_known_edit_key do
			edit_key '123456'
		end
  end
end
