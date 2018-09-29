class ProductsController < ApplicationController

  def new
    @product = Product.new
    @event = @product.events.build
    @disk = @product.disks.build
    @song_order = @disk.song_orders.build
    @genres = Genre.all
    @songs = Song.all
    @song = Song.new
    
  end

  def create
    product = Product.new(product_params)
    product.save
    redirect_to new_product_path

  end

  def index
      @products = Product.page(params[:page]).order(sort_column + ' ' + sort_direction).per(15)
      @products = @products.search(s_title: params[:s_title]) if params[:s_title].present?

  end

  def edit
    @product = Product.find(params[:id])
    @genres = Genre.all
    @songs = Song.all
  end


  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to edit_product_path(@product.id)
  end

  def destroy
   @product = Product.find(params[:id])
   @product.update(delete_flag: true)
   redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:product_name, :airtist_name, :genre_id, :jaket_image, :price, :label_name, :stock, :delete_flag, disks_attributes: [:id, :disk_name, :_destroy, song_orders_attributes: [:id, :song_id, :disk_id, :song_order_number, :_destroy]], events_attributes: [:id, :event_name, :event_information, :venue, :date_and_time])
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "desc"
  end

  def sort_column
      Product.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end
end

