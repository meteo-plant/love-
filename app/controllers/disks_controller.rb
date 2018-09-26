class DisksController < ApplicationController

  def new
    @disk = Disk.new
    @disk.song_orders.build
    @songs = Song.all
    @song = Song.new
  end

  def create
    disk = Disk.new(disk_params)
    disk.product_id = session[:product_id]
    disk.save
    session[:product_id] = nil
    redirect_to new_product_path
  end

  def update

  end

  def disk_params
    params.require(:disk).permit(:product_id, :disk_name, song_orders_attributes: [:id, :song_id, :disk_id, :song_order_number])
  end

end
