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
    # If changing the job from status of "completed" to a status to "billed", then create a bill for the job
    if @job.job_status_id == 2 and job_params[:job_status_id] == "3"  # params[:job_status_id] is nil for some reason...
      create_bill_from_job
    end

#Disabled this for now, so I can test creating a bill from a job.    
#     @job.update(job_params) 

     @url = session[:original_url]
     redirect_to @url
  end
  
  def create_bill_from_job
    # create a client bill and add line items to it
    #byebug
    @bills = InvoicingLedgerItem.where(type: 'Bill') # Need this so Bill.new will work
    @bill = Bill.new sender: current_user.business, recipient: @job.enrollment.client, type: "Bill", currency: "usd"
    @bill.line_items.build description: @job.description_for_bill, net_amount: 'job cost', tax_amount: 0
    if @bill.save # The bill isn't being saved. For some reason this always evaluates to false.
      flash[:notice] = 'The bill was successfully created.'
    else
      flash[:notice] = 'The bill could not be created.'
    end
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
