FactoryGirl.define do
  factory :setlist do
    sequence(:title) { |i| "Mixed Compilation #{i}" }
		sequence(:author) { |i| "DJ #{i}" }
		genre "Testcore"
		
		factory :setlist_with_known_edit_key do
			edit_key "123456"
		end
  end
end
