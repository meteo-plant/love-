class EventsController < ApplicationController

  def index
  	user = current_user
    @users = User.page(params[:page]).per(5).order(:id)
    @events = user.purchases
  end


  def show
  end

  def create
  end

end
