require 'rails_helper'

RSpec.describe Setlist, type: :model do
	it { should validate_presence_of(:title) }
	it { should validate_length_of(:title).is_at_most(255) }
	it { should validate_length_of(:author).is_at_most(255) }
	it { should validate_length_of(:genre).is_at_most(255) }
	
	subject(:setlist) { FactoryGirl.build(:setlist) }
	
	context 'creating a new setlist' do
		it 'assigns itself a new edit key' do
			expect { setlist.save }.to change { setlist.edit_key }.from(nil).to(a_string_matching(/\A[a-f0-9]{6}\z/))
		end
	end
end
