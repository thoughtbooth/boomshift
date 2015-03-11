class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def add_enrollment
    @client = current_user.clients.find(params[:client_id])
    if @client.nil?
      flash[:danger] = "You are not authorized for this client profile."
      redirect_to @client
    end
    @service = current_user.business.services.find(params[:service_id])
    @client.services << @service
    flash[:notice] = 'The enrollment was saved.'
    redirect_to @client
  end
  helper_method :add_enrollment
  
end
