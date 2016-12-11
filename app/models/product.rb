class Product < ActiveRecord::Base
	validates :title, presence: true,
				uniqueness: true
	validates :description, presence: true,
				length: { maximum: 50 }
	validates :image_url, allow_blank: true,
	format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'must be a URL for GIF, JPG, or PNG image'
	}
	validates :price, numericality: { greater_than_or_equal_to: 0.01 }, presence: true 
end
