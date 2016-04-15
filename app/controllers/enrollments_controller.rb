class EnrollmentsController < ApplicationController
  before_action :set_enrollment, only: [:update, :destroy, :update_pref]
  before_action :correct_user, only: [:update, :destroy]
  before_action :authenticate_user!
  before_action :set_business

#   # GET /enrollments
#   def index
#     @enrollments = Enrollment.joins(:business).where("business_id = ?", current_user.business.id)
#   end

#   # GET /enrollments/1
#   def show
#   end

#   # GET /enrollments/new
#   def new
#     @enrollment = Enrollment.new
#   end

#   # GET /enrollments/1/edit
#   def edit
#   end

#   # POST /enrollments
#   def create
#     @enrollment = Enrollment.new(enrollment_params)

#     respond_to do |format|
#       if @enrollment.save
#         format.html { redirect_to :back, success: 'Enrollment was saved.' }
#       else
#         format.html { render :new }
#       end
#     end
#   end
  
  def add_enrollment
    @enrollment = Enrollment.new(params.permit(:client_id, :service_id, :preferences)).save
    flash[:success] = 'The client was enrolled in the service.'
    redirect_to :back
  end
  #helper_method :add_enrollment # Do I even need this?

  # PATCH/PUT /enrollments/1
  def update
    respond_to do |format|
      if @enrollment.update(enrollment_params)
        format.html { redirect_to :back, success: 'Preferences were successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /enrollments/1
  def destroy
    @enrollment.destroy
    respond_to do |format|
      format.html { redirect_to :back, success: 'The client was unenrolled from the service.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrollment
      @enrollment = Enrollment.find(params[:id])
    end
  
    def correct_user
      @enrollment = Enrollment.find_by(id: params[:id], client_id: Client.joins(:business).where("business_id = ?", current_user.business.id))
      if @enrollment.nil?
        flash[:error] = "You are not authorized for that enrollment."
        redirect_to enrollments_path
      end
    end
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def enrollment_params
      params.require(:enrollment).permit(:client_id, :service_id, :preferences, schedule_attributes: Schedulable::ScheduleSupport.param_names)
    end
end
