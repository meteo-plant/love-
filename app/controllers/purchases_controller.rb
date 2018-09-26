class PurchasesController < ApplicationController
  def index
  	@cart = current_user.cart
  	@cart_items = @cart.cart_items.all
  	# @purchase = @cart_items

  end

  def new
  end

  def create
  end

   private

def purchase_params
  params.require(:purchase).permit(:product_id, :purchase_id)
end
end
