class EnrollmentsController < ApplicationController
  before_action :set_enrollment, only: [:show, :edit, :update, :destroy, :update_pref]

  # GET /enrollments
  def index
    @enrollments = Enrollment.all
  end

  # GET /enrollments/1
  def show
  end

  # GET /enrollments/new
  def new
    @enrollment = Enrollment.new
  end

  # GET /enrollments/1/edit
  def edit
  end

  # POST /enrollments
  def create
    @enrollment = Enrollment.new(enrollment_params)

    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to @client, notice: 'Enrollment was saved.' }
      else
        format.html { render :new }
      end
    end
  end
  
  def add_enrollment
    @enrollment = Enrollment.new(params.permit(:client_id, :service_id, :preferences)).save
    @client = current_user.business.clients.find(params[:client_id])
    flash[:notice] = 'The enrollment was saved.'
    redirect_to @client
  end
  helper_method :add_enrollment

  # PATCH/PUT /enrollments/1
  def update
    respond_to do |format|
      if @enrollment.update(enrollment_params)
        @client = current_user.business.clients.find(params[:client_id])
        format.html { redirect_to @client, notice: 'Enrollment was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /enrollments/1
  def destroy
    @enrollment.destroy
    respond_to do |format|
      @client = current_user.business.clients.find(params[:client_id])
      format.html { redirect_to @client, notice: 'The client was unenrolled from the service.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrollment
      @enrollment = Enrollment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enrollment_params
      params.require(:enrollment).permit(:client_id, :service_id, :preferences)
    end
end
