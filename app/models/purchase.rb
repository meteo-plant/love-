class Purchase < ApplicationRecord
	include SearchPurchase
	belongs_to :shipping_address
	belongs_to :user

	attachment :jaket_image

	
end
