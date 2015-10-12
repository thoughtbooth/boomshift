class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_business

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
    # Convert the date format from Moment.js to Strftime for submission to server
    job_params_strptime = job_params
    job_params_strptime[:job_date] = DateTime.strptime(job_params_strptime[:job_date], '%m/%d/%Y @ %l:%M %P')
    @job = Job.create(job_params_strptime)
    if @job.save
      flash[:success] = 'Job was successfully created.'
      redirect_to session[:original_url]
    else
      render action: 'new'
    end
  end

  def update     
    # Convert the date format from Moment.js to Strftime for submission to server
    job_params_strptime = job_params
    job_params_strptime[:job_date] = DateTime.strptime(job_params_strptime[:job_date], '%m/%d/%Y @ %l:%M %P') if job_params_strptime[:job_date]
    @job.update(job_params_strptime)
    
    # If the job  status was changed from "Scheduled" to "Completed", then create a bill for the job
    if @job.job_status_id == 2 and job_params[:job_status_id] == "2"
      create_bill_from_job
    end
    
    # If the job status was changed from "Completed" to "Billed", then send an email with the bill for the job
    if @job.job_status_id == 3 and job_params[:job_status_id] == "3"
      BillMailer.bill_email(@job.client, @job.bill, @job.line_items).deliver
      job_bills = InvoicingLedgerItem.joins(:line_items).where("job_id = ?", @job.id)
      job_bills.first.update issue_date: Time.zone.now
    end

    @url = session[:original_url]
    redirect_to @url
  end
  
  def create_bill_from_job
    # create a client bill and add line items to it
    @bills = InvoicingLedgerItem.where(type: 'Bill') # Need this so Bill.new will work
    @bill = Bill.new type: "Bill", currency: "usd", description: "Bill for services rendered for Job #{@job.id}", status: "open", sender: current_user.business, recipient: @job.enrollment.client, period_start: @job.job_date, period_end: @job.job_date, due_date: current_user.business.payment_term.days_to_pay.days.from_now #current_user.business.payment_term.days_to_pay isn't adding
    @bill.line_items.build job_id: @job.id, description: @job.description_for_bill, net_amount: @job.amount, quantity: 1, creator_id: current_user.id, tax_amount: 0
    if @bill.save
      flash[:notice] = 'The bill was successfully created.'
    else
      @job.update(job_status_id: 1)
      flash[:notice] = 'The bill could not be created. The job has not been moved to the Completed Jobs column.'
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
