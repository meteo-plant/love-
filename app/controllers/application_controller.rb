class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?



def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :admin
      new_admin_session_path
    else
      root_path
    end
  end

# before_action :user_signed_in?

# def create_cart_item
# 	# もしuserがログインしていれば
# 	if user_signed_in?
# 		#カートはカレントユーザーIDを持つ
# 		cart.find(current_user_id)
# 	end

#        #もしカートがブランクなら
# 	if cart.blank?
#        #カートはカレントユーザーIDを作る1
# 		cart = cart.create(currend_user_id)

# 	end
# end




  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name,:user_name_phonetic, :profile_image, :postal_code,:address,:phone_number,:email,:favorite_people_image,:favorite_people])
  end

end
