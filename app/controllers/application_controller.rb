class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?

protected

  # nameを受け取れるようにdeviseのストリングパラメーターを修正
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

end
