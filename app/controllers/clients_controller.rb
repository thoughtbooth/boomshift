class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :resend_client_confirmation, :edit, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:confirm_email]
  before_action :set_business

  respond_to :html

  def index
    @clients = Client.where("business_id = ?", current_user.business.id).order(lname: :asc)
    respond_with(@clients)
  end

  def show
    respond_with(@client)
  end

  def new
    @client = current_user.business.clients.new
    respond_with(@client)
  end

  def edit
  end

  def create
    @client = current_user.business.clients.new(client_params)
    if @client.save
      unless @client.email.empty?
        ClientMailer.registration_confirmation(@client, current_user).deliver
        flash[:success] = 'Client was successfully created.  A request has been sent to the client for them to confirm their email address.'
      else
        flash[:success] = 'Client was successfully created.'
      end
      respond_with @client
    else
      render action: 'new'
    end
  end

  def update
    c_email = @client.email
    if @client.update(client_params)
      if @client.email != c_email
        ClientMailer.registration_confirmation(@client, current_user).deliver
        flash[:success] = 'Client changes were successfully saved, including a new or different email address.  A request has been sent to the client for them to confirm that email address.'
      else
        flash[:success] = 'Client changes were successfully saved.'
      end
      respond_with(@client)
    else
      render action: 'edit'
    end
  end

  def destroy
    @client.destroy
    flash[:notice] = 'Client was successfully deleted.'
    redirect_to myclients_path
  end
  
  def confirm_email
    client = Client.find_by_confirm_token(params[:id])
    if client
      client.email_activate
      flash[:success] = "Thank you for confirming your email address."
      redirect_to root_path
    else
      flash[:error] = "Sorry. Client does not exist."
      redirect_to root_path
    end
  end
  
  def resend_client_confirmation
    ClientMailer.registration_confirmation(@client, current_user).deliver
    flash[:success] = 'The confirmation email has been resent to the client.'
    redirect_to request.referrer
  end

  private
    def set_client
      @client = Client.find(params[:id])
    end
  
    def correct_user
      @client = current_user.business.clients.find_by(id: params[:id])
      if @client.nil?
        flash[:error] = "You are not authorized for that client profile."
        redirect_to clients_path
      end
    end

    def client_params
      params.require(:client).permit(:fname, :lname, :addr1, :addr2, :city, :state, :postal_code, :country, :phone, :email)
    end
end
