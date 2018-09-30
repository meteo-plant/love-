class TopsController < ApplicationController
  def top
  	@cart_item = CartItem.new
  	@products = Product.all
    @genres = Genre.all 
  end

  def create
  	@cart_item = CartItem.new(params[:id])
  	@cart_item.save
  	redirect_to carts_item_path
  end

  private 
  def cart_item_params
  	params.require(:cart_item).permit(:number_of_sheet)
  end


end
