class AdminPurchasesController < ApplicationController
   def index
      @purchases = Purchase.page(params[:page]).order(sort_column + ' ' + sort_direction).per(15)
      @purchases = @purchases.search(s_name: params[:s_name]) if params[:s_name].present?
  end

  def show

  	@purchase = Purchase.find(params[:id])
  	# @shipping_address = ShippingAddress.find(params[:id])
  	
  end

  def destroy
   @purchase = Purchase.find(params[:id])
   @purchase.update(payment_flag: true)
   redirect_to admin_purchase_path(@purchase.id)

  end

  def shipping_destroy
   @purchase = Purchase.find(params[:id])
   @purchase.update(shipping_flag: true)
   redirect_to admin_purchase_path(@purchase.id)

  	
  end

 

	private



  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "desc"
  end

  def sort_column
      Purchase.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

end