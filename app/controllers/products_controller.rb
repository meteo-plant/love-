class ProductsController < ApplicationController
  def new
    @product = Product.new
    @event = @product.events.build
    @disk = @product.disks.build
    @song_order = @disk.song_orders.build
    @genres = Genre.all
    @songs = Song.all
  end

  def create
    product = Product.new(product_params)
    product.save
    session[:product_id] = product.id
    puts product.errors.full_messages
    redirect_to new_product_path

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
    params.require(:product).permit(:product_name, :airtist_name, :genre_id, :jaket_image, :price, :label_name, :stock, :delete_flag, disks_attributes: [:id, :disk_name, :_destroy, song_orders_attributes: [:id, :song_id, :disk_id, :song_order_number, :_destroy]], events_attributes: [:id, :event_name, :event_information, :venue, :date_and_time])
  end
end
