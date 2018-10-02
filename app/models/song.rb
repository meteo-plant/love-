class Song < ApplicationRecord
	validates :song_name, uniqueness: true

	has_many :song_orders
end
