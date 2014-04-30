class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :authenticate_staff!
    
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:staffcode, :name, :email, :password, :password_confirmation, :remember_me, :reset_password_token, :desc) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:staffcode, :name, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:staffcode, :name, :email, :password, :password_confirmation, :current_password, :desc) }
  end
  
end
