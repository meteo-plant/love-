class ProductsController < ApplicationController
  def new
    @product = Product.new
    @product.events.build
    @genres = Genre.all
  end

  def create
    product = Product.new(product_params)
    product.save
    puts product.errors.full_messages
    redirect_to new_song_path

  end

  def index
    @products = Product.page(params[:page]).reverse_order.per(10)
    @q        = Product.search(params[:q])
    @products = @q.result(distinct: true)

  end

  def edit
  end



  def update
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:product_name, :airtist_name, :genre_id, :jaket_image, :price, :label_name, :stock, :event_id, :delete_flag, events_attributes: [:id, :event_name, :event_information, :venue, :date_and_time])
  end
end
