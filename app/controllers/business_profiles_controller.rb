class BusinessProfilesController < ApplicationController
  before_action :set_business_profile, only: [:show, :edit, :update, :destroy]

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
    @business_profile = BusinessProfile.new(business_profile_params)
    @business_profile.save
    respond_with(@business_profile)
  end

  def update
    @business_profile.update(business_profile_params)
    respond_with(@business_profile)
  end

  def destroy
    @business_profile.destroy
    respond_with(@business_profile)
  end

  private
    def set_business_profile
      @business_profile = BusinessProfile.find(params[:id])
    end

    def business_profile_params
      params.require(:business_profile).permit(:name, :about, :addr1, :addr2, :city, :state, :country, :phone)
    end
end
