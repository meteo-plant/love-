class CartItemsController < ApplicationController
  
  def index
     @products = Product.all
     @price = 0
     @products.each do |product|
      @price += product.price
    end
  end

  def show

  end

  def create
  end

  def update
  end

  def destroy
  end


end
