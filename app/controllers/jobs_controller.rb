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
    @job.update(job_params)

    @url = session[:original_url]
    redirect_to @url
  end

  def destroy
    @job.destroy
    #respond_with(@job)
    redirect_to :back
  end
  
  def create_bill_from_job
    bill = Bill.new sender: current_user.business.id, recipient: asdf, type: "Bill", currency: "usd"
    bill.line_items.build description: 'Goodies: T-Shirt', net_amount: 10, tax_amount: 0
    bill.save
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:job_date, :job_status_id, :enrollment_id, :completed_on, :paid_on, :hours_worked)
    end
end
