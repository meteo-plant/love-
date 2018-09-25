class UserProductsController < ApplicationController
  def index
  	@products = Product.page params[:page]
    @products = @products.search(s_title: params[:s_title], s_artist: params[:s_artist]) if params[:s_title].present? || params[:s_artist].present?
  end

  def show
  end
end
