class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

#   def index
#     @businesses = Business.where("id = ?", current_user.business.id)
#     respond_with(@businesses)
#   end

  def show
    respond_with(@business)
  end

  def new
    @business = current_user.build_business
    respond_with(@business)
  end

  def edit
  end
  
  def create
    @business = current_user.build_business(business_params)
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
    flash[:notice] = 'Your business profile was deleted.'
    respond_with @business
  end

  private
    def set_business
      @business = current_user.business
    end
  
    def correct_user
      unless params[:id].to_i == current_user.business.id
        flash[:error] = "You are not authorized for that business profile."
        redirect_to mybusiness_path
      end
    end

    def business_params
      params.require(:business).permit(:name, :contact_name, :about, :addr1, :addr2, :city, :state, :postal_code, :country, :phone)
    end
end
