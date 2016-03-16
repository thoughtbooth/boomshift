class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def set_return_url
    # Use this to redirect back to the correct view when an action can be executed from different views.
    session[:original_url] = request.url
  end
  helper_method :set_return_url
  
  def clear_return_url
    session[:original_url] = nil
  end
  helper_method :clear_return_url
  
  def after_sign_in_path_for(resource)
    request.referrer
  end
  
  def set_business
    if user_signed_in?
      unless current_user.business
        flash[:alert] = "Please create your business profile first."
        redirect_to mybusiness_path
      end
    end
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :f_name
      devise_parameter_sanitizer.for(:sign_up) << :l_name
      devise_parameter_sanitizer.for(:account_update) << :f_name
      devise_parameter_sanitizer.for(:account_update) << :l_name
    end
end
