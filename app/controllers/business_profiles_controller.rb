# DELETE THIS CONTROLLER
class BusinessProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_business_profile, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  
  respond_to :html

  def index
    @business_profiles = BusinessProfile.all
    respond_with(@business_profiles)
  end

  def show
    respond_with(@business_profile)
  end

  def new
    @business_profile = BusinessProfile.new
    respond_with(@business_profile)
  end

  def edit
  end

  def create
    @business_profile = current_user.BusinessProfile.build(business_profile_params)
    if @business_profile.save
      respond_with @business_profile, notice: 'Your business profile has been created.'
    else
      render action: 'new'
    end
  end

  def update
    if @business_profile.update(business_profile_params)
      respond_with @business_profile, notice: 'Your business profile has been saved.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @business_profile.destroy
    respond_with(@business_profile)
  end

  private
    def set_business_profile
      @business_profile = BusinessProfile.find(params[:id])
    end
  
    def correct_user
      @business_profile = current_user.BusinessProfile.find_by(id: params[:id])
      redirect_to business_profile_path, notice: "You are not authorized to edit this business profile."
    end
  
    def business_profile_params
      params.require(:business_profile).permit(:name, :about, :addr1, :addr2, :city, :state, :country, :phone)
    end
end
