class Disk < ApplicationRecord

	belongs_to :product
	has_many :song_orders, dependent: :destroy, inverse_of: :disk
	accepts_nested_attributes_for :song_orders, allow_destroy: true
	
end
