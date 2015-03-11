class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!  

  respond_to :html

  def index
    @clients = Client.all
    respond_with(@clients)
  end

  def show
    respond_with(@client)
  end

  def new
    @client = current_user.clients.new
    respond_with(@client)
  end

  def edit
  end

  def create
    @client = current_user.clients.new(client_params)
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
    flash[:success] = 'Client was successfully deleted.'
    respond_with(@client)
  end

  private
    def set_client
      @client = Client.find(params[:id])
    end
  
    def correct_user
      @client = current_user.clients.find_by(id: params[:id])
      if @client.nil?
        flash[:danger] = "You are not authorized for this client profile."
        redirect_to client_path
      end
    end

    def client_params
      params.require(:client).permit(:fname, :lname, :addr1, :addr2, :city, :state, :country, :phone)
    end
end
