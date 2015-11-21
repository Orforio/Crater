require 'rails_helper'

RSpec.describe Setlist, type: :model do
	it { should validate_presence_of(:title) }
	it { should validate_presence_of(:edit_key) }
	it { should validate_length_of(:title).is_at_most(255) }
	it { should validate_length_of(:author).is_at_most(255) }
	it { should validate_length_of(:genre).is_at_most(255) }
	it { should validate_length_of(:edit_key).is_at_least(5).is_at_most(6) }
end
