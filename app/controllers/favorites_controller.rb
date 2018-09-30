class FavoritesController < ApplicationController
  def index
  	@user = current_user
  	@users = User.page(params[:page]).per(5).order(:id)
    @aaa = @user.favorites
  end


  def ss
    product = Product.find(params[:id])
    Favorite.find_or_create_by(user_id: current_user.id, product_id: params[:id])

    redirect_back(fallback_location: user_product_path)
  end

  def create
  end

  def destroy
  end

private
def favorite_params
  params.require(:favorite).permit(:user_id, :product_id, :cart_item, :number_of_sheets, :old_price, :jaket_image_id, :label_name, :product_name)
end


end