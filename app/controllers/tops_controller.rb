class TopsController < ApplicationController
  def top
  	@cart_item = CartItem.new
    @users = Purchase.group(:user_id).sum(:old_price)
    puts @users
    @users = Hash[ @users.sort_by{ |_, v| -v } ]

    @event_products=Event.order("id DESC")
  	@products = Product.order("id DESC").limit(5)
    @genres = Genre.all
    # @event_products.each do |a|
    #   puts a.product.product_name
    # end

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
