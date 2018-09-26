class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name,:user_name_phonetic, :profile_image, :postal_code,:address,:phone_number,:email,:favorite_people_image,:favorite_people])
  end
end
