class SongsController < ApplicationController
  def index
    @song = Song.new
    @songs = Song.page(params[:page]).reverse_order.per(10)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    song = Song.new(song_params)
    song.save
    redirect_to new_product_path
  end

  def update
    song = Song.find(params[:id])
    song.update(song_params)
    redirect_to songs_path
  end
    private

  def song_params
  	params.require(:song).permit(:song_name)
  end

end
