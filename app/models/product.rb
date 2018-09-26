class Product < ApplicationRecord
	include SearchProduct
	attachment :jaket_image
	
    belongs_to :genre
	has_many :favorites, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_many :cart_items
	has_many :disks, dependent: :destroy, inverse_of: :product
	has_many :events
	accepts_nested_attributes_for :events
	accepts_nested_attributes_for :disks, allow_destroy: true
	
end

