class EventsController < ApplicationController
  def index
  	@event = Event.new
  	@events = Event.all
  	@user = current_user
  	@users = User.page(params[:page]).per(5).order(:id)

  end

  def show
  end

  def create
  end
end
