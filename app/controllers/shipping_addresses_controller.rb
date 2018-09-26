class ShippingAddressesController < ApplicationController
  def index
  end

  def create

  end



  def destroy
  end

  def add_address
   	 shipping_address = ShippingAddress.new(shipping_address_params)
   	 shipping_address.user_id = current_user.id #←current_userのIDを渡している
     shipping_address.save
     redirect_to cart_item_path
  end

 private
  def shipping_address_params
  params.require(:shipping_address).permit(:shipping_address_name)
end


end
