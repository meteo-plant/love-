class SongsController < ApplicationController
  def new
  end
  def create
    song = Song.new(song_params)
    song.save
    redirect_to new_disk_path
  end

  def update
  end
    private

  def song_params
  	params.require(:song).permit(:song_name)
  end

end
