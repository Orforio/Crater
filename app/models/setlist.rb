class Setlist < ActiveRecord::Base
	validates :title, presence: true, length: { maximum: 255 }
	validates :author, length: { maximum: 255 }
	validates :genre, length: { maximum: 255 }
	validates :edit_key, presence: true, length: { in: 5..6 } 
end
