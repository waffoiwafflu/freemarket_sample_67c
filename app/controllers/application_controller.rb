class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :basic_auth, if: :production?  
  before_action :configure_permitted_parameters, if: :devise_controller?




  private

  def production?
    Rails.env.production?
  end
  
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials[:basic_auth_user] && password == Rails.application.credentials[:basic_auth_password]
    end
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:first_name,:last_name,:first_name_kana,:last_name_kana,:year,:month,:day,:phone_number,])
  end
end
