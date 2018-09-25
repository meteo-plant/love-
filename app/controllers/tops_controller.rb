class TopsController < ApplicationController
  def top
  	@cart = Cart.new
  end

  def create
  	@cart = Cart.new(params[:id])
  	redirect_to root_path
  end

  private 
  def cart_item_params
  	params.require(:cart_item).permit(:number_of_sheet)
  end


end
