class UserProductsController < ApplicationController
  def index
    if params[:id] == 'aa'
      @products = Product.page params[:page]
  	  @products = @products.search(s_title: params[:s_title]) if params[:s_title].present? 
  	else
  		@products = Product.where(genre_id: params[:id])
    end
    @genre = Genre.all
  end

  def show
  	  @comment = Comment.new
  	  @product = Product.find(params[:id])
      @user = User.all
  end


  private
  def product_params
   	params.require(:product).permit(:jaket_image, :product_name, :product_id)
  end
end