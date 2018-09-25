class UserProductsController < ApplicationController
  def index
  	 @products = Product.all
  	 # @product = Product.find(params[:id])
  	 @cart_items = CartItem.all

  end

  def show
  	  @comment = Comment.new
  	  @product = Product.find(params[:id])
  end


   private
 def product_params
 	params.require(:product).permit(:jaket_image, :product_name, :product_id)
 end

end
