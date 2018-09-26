class AdminUsersController < ApplicationController
  def index
  end

  def show
  	@user = User.find(params[:user_id])
  end

	private
	def user_params
	    params.require(:user).permit(:user_name, :user_name_phonetic, :postal_code, :address, :phone_number, :email )
	end
end