class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def set_return_url
    # Use this to redirect back to the correct view when an action can be executed from different views.
    session[:original_url] = request.url
  end
  helper_method :set_return_url
  
  def clear_return_url
    session[:original_url] = nil
  end
  helper_method :clear_return_url
  
  def set_business
    unless current_user.business
      flash[:danger] = "Please create your business profile first."
      redirect_to mybusiness_path
    end
  end
end
