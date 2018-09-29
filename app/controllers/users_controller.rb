class UsersController < ApplicationController
  def create
    @user = User.new
    @user.save
    redirect_to user_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
       redirect_to user_path(@user.id)
    else
       @user = User.find(params[:id])
       render :edit
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @users = current_user
    @users.soft_delete
    sign_out(@users)
    redirect_to root_path
  end

  private
    def user_params
    params.require(:user).permit(:user_name,:user_name_phonetic, :profile_image, :postal_code,:address,:phone_number,:email,:favorite_people_image,:favorite_people)
    end
end
