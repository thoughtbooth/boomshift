class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
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
      flash[:success] = 'Client was successfully created.'
      respond_with @client
    else
      render action: 'new'
    end
  end

  def update
    if @client.update(client_params)
      flash[:success] = 'Client changes were successfully saved.'
      respond_with(@client)
    else
      render action: 'edit'
    end
  end

  def destroy
    @client.destroy
    flash[:notice] = 'Client was successfully deleted.'
    respond_with(@client)
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
