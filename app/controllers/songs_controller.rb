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
    if song.save
      flash[:notice] = "Song was successfully created."
      redirect_to songs_path
    else
      flash[:notice] = "!!Song already exists!!"
      redirect_to songs_path
    end
  end

  def update
    song = Song.find(params[:id])
    if song.update(song_params)
      flash[:notice] = "Song was successfully updated."
      redirect_to songs_path
    else
      flash[:notice] = "!!Song already exists!!"
      redirect_to songs_path
    end
  end
    private

  def song_params
  	params.require(:song).permit(:song_name)
  end

end

