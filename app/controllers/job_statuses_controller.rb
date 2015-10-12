class JobStatusesController < ApplicationController
  before_action :set_job_status, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_business

  respond_to :html

  def index
    @job_statuses = JobStatus.all
    respond_with(@job_statuses)
  end

  def show
    respond_with(@job_status)
  end

  def new
    @job_status = JobStatus.new
    respond_with(@job_status)
  end

  def edit
  end

  def create
    @job_status = JobStatus.new(job_status_params)
    @job_status.save
    respond_with(@job_status)
  end

  def update
    @job_status.update(job_status_params)
    respond_with(@job_status)
  end

  def destroy
    @job_status.destroy
    respond_with(@job_status)
  end

  private
    def set_job_status
      @job_status = JobStatus.find(params[:id])
    end

    def job_status_params
      params.require(:job_status).permit(:status, :job_id)
    end
end
