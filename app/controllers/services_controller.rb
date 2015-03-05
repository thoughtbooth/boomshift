class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    @services = Service.all
    respond_with(@services)
  end

  def show
    respond_with(@service)
  end

  def new
    @service = current_user.business.services.new
    respond_with(@service)
  end

  def edit
  end

  def create
    @service = current_user.business.services.new(service_params)
    if @service.save
      respond_with @service, notice: 'Client was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @service.update(service_params)
      respond_with(@service)
    else
      render action: 'edit'
    end
  end

  def destroy
    @service.destroy
    respond_with(@service)
  end

  private
    def set_service
      @service = Service.find(params[:id])
    end
  
    def correct_user
      @client = current_user.business.services.find_by(id: params[:id])
      if @client.nil?
        redirect_to client_path, notice: "You are not authorized for this service."
      end
    end

    def service_params
      params.require(:service).permit(:name, :description, :price)
    end
end
