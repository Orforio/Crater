class Setlist < ActiveRecord::Base
	validates :title, presence: true, length: { maximum: 255 }
	validates :author, length: { maximum: 255 }
	validates :genre, length: { maximum: 255 }
	
	before_create :set_edit_key
	
	private
		def set_edit_key
			self.edit_key = SecureRandom.hex(3)	# Generates a 3-byte, or 6-character hex string
		end
end
