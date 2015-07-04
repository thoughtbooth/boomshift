class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @jobs = Job.all
    respond_with(@jobs)
  end

  def show
    respond_with(@job)
  end

  def new
    @job = Job.new
    respond_with(@job)
  end

  def edit
  end

  def create
    @job = Job.create(job_params)
    if @job.save
      flash[:success] = 'Job was successfully created.'
      redirect_to session[:original_url]
    else
      render action: 'new'
    end
  end

  def update
    # If changing the job to a status of "billed", then create a bill for the job before changing the status
    if @job.job_status_id == 3 # I changed this from params[:job_status_id], but it still doesn't appear to be working...
      bills_controller.create_bill_from_job
    end
    
    @job.update(job_params)

    @url = session[:original_url]
    redirect_to @url
  end

  def destroy
    @job.destroy
    #respond_with(@job)
    redirect_to :back
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:job_date, :job_status_id, :enrollment_id, :completed_on, :billed_on, :paid_on, :hours_worked)
    end
end
