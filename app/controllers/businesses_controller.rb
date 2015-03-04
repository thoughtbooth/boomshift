class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    @businesses = Business.all
    respond_with(@businesses)
  end

  def show
    respond_with(@business)
    #redirect_to @business
  end

  def new
    @business = Business.new
    respond_with(@business)
  end

  def edit
  end
  
  def create
    @business = current_user.build_business(business_params)
    if @business.save
      respond_with @business, notice: 'Your business profile has been created.'
    else
      render action: 'new'
    end
  end

  def update
    @business.update(business_params)
    respond_with @business, notice: 'Your business profile changes were saved.'
  end

  def destroy
    @business.destroy
    respond_with @business, notice: 'Your business profile was deleted.'
  end

  private
    def set_business
      @business = current_user.business #Business.find(params[:id])
    end
  
    def correct_user
      @business = current_user.business #find_by(id: params[:id])
      if @business.nil?
        redirect_to business_path, notice: "You are not authorized for this business profile."
      end
    end

    def business_params
      params.require(:business).permit(:name, :about, :addr1, :addr2, :city, :state, :country, :phone)
    end
end
