class SongOrder < ApplicationRecord
	belongs_to :disk
	belongs_to :song
end
