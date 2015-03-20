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
      redirect_to jobs_path
      #respond_with(@job)
    else
      render action: 'new'
    end
  end
  
  def sort
    params[:order].each do |key,value|
      Task.find(value[:id]).update_attribute(:priority,value[:position])
    end
    render nothing: true
  end 

  def update
    @job.update(job_params)
    #respond_with(@job)
    redirect_to jobs_path
  end

  def destroy
    @job.destroy
    respond_with(@job)
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:job_date, :job_status_id, :enrollment_id)
    end
end
