class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_business

  respond_to :html

  def index
    @services = Service.where("business_id = ?", current_user.business.id).order(name: :asc)
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
      flash[:success] = 'Service was successfully created.'
      respond_with @service
    else
      render action: 'new'
    end
  end

  def update
    if @service.update(service_params)
      flash[:success] = 'Service changes were successfully saved.'
      respond_with(@service)
    else
      render action: 'edit'
    end
  end

  def destroy
    @service.destroy
    flash[:notice] = 'Service was successfully deleted.'
    respond_with(@service)
  end

  private
    def set_service
      @service = Service.find(params[:id])
    end
  
    def correct_user
      @service = current_user.business.services.find_by(id: params[:id])
      if @service.nil?
        flash[:error] = "You are not authorized for that service."
        redirect_to services_path
      end
    end

    def service_params
      params.require(:service).permit(:name, :description, :price)
    end
end
