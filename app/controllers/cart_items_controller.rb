class CartItemsController < ApplicationController
  
  def index
     
     @cart = current_user.cart
     @cart_items = @cart.cart_items.all
     @price = 0
     @cart_items.each do |cart_item|
     @all_price = cart_item.product.price * cart_item.number_of_sheets
     @price +=  @all_price
    end
     #  @cart_items.each do |cart_item|
     # @a.price = cart_item.product.select(:price)
     #   @a.price *= cart_item.select(:number_of_sheets)
     # end


  end

  def show
     @cart = current_user.cart
     @cart_items = @cart.cart_items.all

  end

  def update
      cart_item = CartItem.find(params[:id])
      cart_item.update(cart_item_params)
      puts "ssss"
      puts cart_item.errors.full_messages
      redirect_to cart_items_path(cart_item.id)
  end

  def test
    CartItem.find_or_create_by(cart_id: current_user.cart.id, product_id: params[:id] )
    redirect_back(fallback_location: user_products_path)
  end

  def create
    
  end

  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to cart_items_path
  end

   private
def cart_item_params
  params.require(:cart_item).permit(:user_id, :product_id, :number_of_sheets)
end


end
