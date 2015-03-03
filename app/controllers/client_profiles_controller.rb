# DELETE THIS CONTROLLER
class ClientProfilesController < ApplicationController
  before_action :set_client_profile, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_profiles = ClientProfile.all
    respond_with(@client_profiles)
  end

  def show
    respond_with(@client_profile)
  end

  def new
    @client_profile = ClientProfile.new
    respond_with(@client_profile)
  end

  def edit
  end

  def create
    @client_profile = ClientProfile.new(client_profile_params)
    @client_profile.save
    respond_with(@client_profile)
  end

  def update
    @client_profile.update(client_profile_params)
    respond_with(@client_profile)
  end

  def destroy
    @client_profile.destroy
    respond_with(@client_profile)
  end

  private
    def set_client_profile
      @client_profile = ClientProfile.find(params[:id])
    end

    def client_profile_params
      params.require(:client_profile).permit(:fname, :lname, :addr1, :addr2, :city, :state, :country, :phone)
    end
end
