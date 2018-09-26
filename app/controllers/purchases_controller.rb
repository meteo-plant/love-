class PurchasesController < ApplicationController
  def index
  	@cart = current_user.cart
  	@cart_items = @cart.cart_items.all
  	# @purchase = @cart_items

  end

  def new
  end

  def create

  	 purchase = Purchase.new(purchase_params)
   	 # purchase.user_id = current_user.idw
   	 puts "ddddd"
     purchase.save
     puts purchase.errors.full_messages
     puts "aaaa"
     redirect_to new_purchase_path
  end

   private

def purchase_params
  params.require(:purchase).permit(:product_id, :purchase_id, :user_id, :shipping_address_id, :method_of_payment)
end
end
