class PurchasesController < ApplicationController
  def index
  	@cart = current_user.carts.where(delete_flag: false).first
  	 # @user = User.find(params[:id])
  	 #@cart_items = @cart.cart_items.all
  	 #@products = @cart_items.product.all
  	# @shipping_address = current_user.shipping_address
    @purchases = Purchase.all
  end

  def new
  end



  def create
  	    cart = current_user.carts.where(delete_flag: false).first
  	    cart_items = cart.cart_items
  	    #cart_items = CartItem.where(cart_id: cart.id)
  	    cart_items.each do |cart_item|
	  	  	purchase = Purchase.new(purchase_params)
	  	 	purchase.save
	  	 	purchase.update(old_price: cart_item.old_price, product_name: cart_item.product.product_name,
	  	 		number_of_sheets: cart_item.number_of_sheets, jaket_image_id: cart_item.product.jaket_image_id, label_name: cart_item.product.label_name)
  	    end
  		cart.delete_flag = true
     	cart.save

     # if current_user.cart.delete_flag = true
     	# if cart.delete_flag == true
        cart = Cart.new(user_id: current_user.id)
        cart.save
     # end
     redirect_to purchases_path
  end

   private

	def purchase_params
	  params.require(:purchase).permit(:cart_item_id, :product_id, :purchase_id, :user_id, :shipping_address_id, :method_of_payment)
	end
end
