class Product < ApplicationRecord
<<<<<<< HEAD
	include SearchProduct
=======
	
    attachment :jaket_image

>>>>>>> f7cb9414933935967f28e1b8962cfd872519d435
	belongs_to :genre
	has_many :favorites, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_many :cart_items
	has_many :disks, dependent: :destroy
	
end
