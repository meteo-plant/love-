class FavoritesController < ApplicationController
  def index
  	@favorite = Favorite.new
  	@favorites = Favorite.all
  	@user = current_user
  	@users = User.page(params[:page]).per(5).order(:id)
  end

  def create
  end

  def destroy
  end
end
