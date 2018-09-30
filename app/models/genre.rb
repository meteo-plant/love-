class Genre < ApplicationRecord
	validates :genre_name, uniqueness: true
	has_many :products
end
