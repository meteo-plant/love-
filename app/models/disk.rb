class Disk < ApplicationRecord
	belongs_to :product
	has_many :song_orders
end
