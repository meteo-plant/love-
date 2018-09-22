class Product < ApplicationRecord
	
    attachment :jaket_image

	belongs_to :genre
	has_many :favorites, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_many :cart_items
	has_many :disks, dependent: :destroy
	
end
