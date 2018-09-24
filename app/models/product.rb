class Product < ApplicationRecord
	
    attachment :jaket_image

	belongs_to :genre
	has_many :favorites, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_many :cart_items
	has_many :disks, dependent: :destroy
	has_many :events
	accepts_nested_attributes_for :events
	
end
