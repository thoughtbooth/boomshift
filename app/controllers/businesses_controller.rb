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
    @business = current_user.business.build
    respond_with(@business)
  end

  def edit
  end
  
  def create
    @business = current_user.business.build(business_params)
    if @business.save
      flash[:success] = 'Your business profile has been created.'
      respond_with @business
    else
      render action: 'new'
    end
  end

  def update
    if @business.update(business_params)
      flash[:success] = 'Your business profile changes were saved.'
      respond_with @business
    else
      render action: 'edit'
    end
  end

  def destroy
    @business.destroy
    flash[:success] = 'Your business profile was deleted.'
    respond_with @business
  end

  private
    def set_business
      @business = current_user.business #Business.find(params[:id])
    end
  
    def correct_user
      @business = current_user.business #find_by(id: params[:id])
      if @business.nil?
        flash[:danger] = "You are not authorized for this business profile."
        redirect_to business_path
      end
    end

    def business_params
      params.require(:business).permit(:name, :about, :addr1, :addr2, :city, :state, :postal_code, :country, :phone)
    end
end
