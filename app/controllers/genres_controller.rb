class GenresController < ApplicationController
  def index
  	@genre = Genre.new
  	@genres = Genre.page(params[:page]).reverse_order.per(10)
  end

  def edit
  	@genre = Genre.find(params[:id])
  end

  def create
    genre = Genre.new(genre_params)
    if genre.save
      flash[:notice] = "Genre was successfully created."
      redirect_to genres_path
    else
      flash[:notice] = "!!This genre already exists!!"
      redirect_to genres_path
    end
  end

  def update
    genre = Genre.find(params[:id])
    if genre.update(genre_params)
    flash[:notice] = "Genre was successfully updated."
    redirect_to genres_path
    else
      flash[:notice] = "!!This genre already exists!!"
      redirect_to genres_path
    end
  end

  private

  def genre_params
  	params.require(:genre).permit(:genre_name)
  end
end
