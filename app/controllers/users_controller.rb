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
    @users = User.all
    @user = User.find(params[:id])
    @items = @user.purchases
    @price = 0
    @items.each do |item|
    @all_price = item.old_price * item.number_of_sheets
    @price +=  @all_price
   end
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
