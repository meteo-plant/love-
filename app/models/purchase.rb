class Purchase < ApplicationRecord
	belongs_to :shipping_address

	attachment :jaket_image
end
