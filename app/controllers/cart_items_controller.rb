class CartItemsController < ApplicationController

  def index
      @cart = current_user.carts.where(delete_flag: false).first
      @cart_items = @cart.cart_items
      @price = 0
      @cart_items.each do |cart_item|
        @all_price = cart_item.product.price * cart_item.number_of_sheets
        @price +=  @all_price
      end
  end

  def show
      @cart = current_user.carts.where(delete_flag: false).first
      @cart_items = @cart.cart_items
      @price = 0
      @cart_items.each do |cart_item|
        @all_price = cart_item.product.price * cart_item.number_of_sheets
        @price +=  @all_price
      end
       @shipping_address = ShippingAddress.all
       @purchase = Purchase.new
       @cart = current_user.carts.where(delete_flag: false).first
       @cart_items = @cart.cart_items.all
       @shipping_addressA = ShippingAddress.new


  end

  def update
    puts params[:cart_item][:number_of_sheets] #パラメーターを持ってきてこれるか確認するための記述
    puts params[:cart_item][:old_price]
    puts params[:id]
      cart = current_user.carts.where(delete_flag: false).first
      cart_item = CartItem.find(params[:id])
      cart_item.update(number_of_sheets: params[:cart_item][:number_of_sheets], old_price: (params[:cart_item][:number_of_sheets].to_i * params[:cart_item][:old_price].to_i))
      redirect_to cart_items_path
  end
      #puts cart_item.errors.full_messages


  def test #←カートアイテム作成
    product = Product.find(params[:id])
   CartItem.find_or_create_by(cart_id: current_user.carts.where(delete_flag: false).first.id, product_id: params[:id], old_price: product.price)
    redirect_back(fallback_location: user_product_path)
  end

  def create
    purchase = Parchase.find(params[:id])
    purchase.save
    redirect_to cart_items_path
  end


  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to cart_items_path
  end




   private
def cart_item_params
  params.require(:cart_item).permit(:user_id, :product_id, :cart_item, :number_of_sheets, :old_price, :jaket_image, :label_name)
end


end
