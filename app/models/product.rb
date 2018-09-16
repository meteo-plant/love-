class Product < ApplicationRecord
	belongs_to :genre
	has_many :favorites
	has_many :comments
	has_many :cart_items
	has_many :disks
	
end
