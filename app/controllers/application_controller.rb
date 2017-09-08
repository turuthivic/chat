class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_params, if: :devise_controller?

protected

def configure_permitted_params
  devise_parameter_sanitizer.permit(:sign_in) do |params|
  	params.permit(:email, :username, :password, :remember_me)
  end
  devise_parameter_sanitizer.permit(:sign_up) do |params|
  	params.permit(:email, :username, :first_name, :second_name, :password, :password_confirmation)
  end
end

end
