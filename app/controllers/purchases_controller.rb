class PurchasesController < ApplicationController
  def index
  	@cart = current_user.carts.where(delete_flag: false).first
  	 # @user = User.find(params[:id])
  	 @cart_item = @cart.cart_items
  	 #@products = @cart_items.product.all
  	# @shipping_address = current_user.shipping_address
    @purchases = Purchase.where(user_id: current_user.id).page(params[:page]).reverse_order

  end

  def new
  end



  def create
        user = current_user
  	    cart = current_user.carts.where(delete_flag: false).first
  	    cart_items = cart.cart_items
  	    #cart_items = CartItem.where(cart_id: cart.id)
  	    cart_items.each do |cart_item|
	  	  	purchase = Purchase.new(purchase_params)
	  	 	purchase.save
	  	 	purchase.update(old_price: cart_item.old_price, product_name: cart_item.product.product_name, user_id: cart_item.cart.user_id, user_name: user.user_name,
	  	 		number_of_sheets: cart_item.number_of_sheets, jaket_image_id: cart_item.product.jaket_image_id, label_name: cart_item.product.label_name, event_name: cart_item.product.event.event_name, evernt_information: cart_item.product.event.event_information, venue: cart_item.product.event.venue, date_and_time: cart_item.product.event.date_and_time)
        # 在庫処理
        product = cart_item.product
        product.update(stock: product.stock.to_i - cart_item.number_of_sheets.to_i)
  	    end
  		cart.delete_flag = true
     	cart.save

     # if current_user.cart.delete_flag = true
     	# if cart.delete_flag == true
        cart = Cart.new(user_id: current_user.id)
        cart.save

     redirect_to new_purchase_path
  end

   private

	def purchase_params
	  params.require(:purchase).permit(:cart_item_id, :product_id, :purchase_id, :user_id, :shipping_address_id, :method_of_payment, :event_name, :evernt_information, :venue, :date_and_time, :event_id)
	end
end
