class ShippingAddress < ApplicationRecord
	has_many :purchases
	belongs_to :user
end
