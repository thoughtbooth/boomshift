class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_business

  respond_to :html

  def index
    @jobs = Job.joins(enrollment: [{ client: :business }]).where("business_id = ?", current_user.business.id)
    respond_with(@jobs)
  end

  def show
    respond_with(@job)
  end

  def new
    if not current_user.business.payment_term
      flash[:alert] = "Please set your payment terms before creating a job."
      redirect_to request.referrer
    else
      @job = Job.new
      respond_with(@job)
    end
  end

  def edit
  end

  def create
    # Convert the date format from Moment.js to Strftime for submission to server
    job_params_strptime = job_params
    # The DateTimePicker control sends time in local timezone to the controller, which  incorrectly assumes it is UTC. Using change method to move the offset to compensate.
    job_params_strptime[:date] = DateTime.strptime(job_params_strptime[:date], '%m/%d/%Y @ %l:%M %P').change(offset: Time.zone.formatted_offset(false))
    @job = Job.create(job_params_strptime)
    if @job.save
      flash[:success] = 'The job was successfully created.'
      redirect_to session[:original_url]
    else
      render action: 'new'
    end
  end

  def update
    # Convert the date format from Moment.js to Strftime for submission to server
    job_params_strptime = job_params
    # The DateTimePicker control sends time in local timezone to the controller, which  incorrectly assumes it is UTC. Using change method to move the offset to compensate.
    job_params_strptime[:date] = DateTime.strptime(job_params_strptime[:date], '%m/%d/%Y @ %l:%M %P').change(offset: Time.zone.formatted_offset(false)) if job_params_strptime[:date]
    @job.update(job_params_strptime)

    # If the job  status was changed from "Scheduled" to "Completed", then create a bill for the job
    if @job.job_status_id == 2 and job_params[:job_status_id] == "2"
      create_bill_from_job
    end

    # If the job status was changed from "Completed" to "Billed", then send an email with the bill for the job (if there is an email address)
    if @job.job_status_id == 3 and job_params[:job_status_id] == "3"
      if @job.client.email_confirmed
        BillMailer.bill_email(@job.client, @job.bill, @job.line_items).deliver
        flash[:success] = 'The bill has been emailed to ' + @job.client.full_name + '.'
      elsif not @job.client.email.blank? and not @job.client.email_confirmed
        flash[:success] = 'The bill has been emailed to ' + @job.client.full_name + ', but he/she has not confirmed their email address. If the email address is incorrect, you will need to print out and deliver the bill.'
      else
        flash[:notice] = 'There is no email address on file for ' + @job.client.full_name + '. You will need to print out and deliver the bill.'
      end
      job_bills = InvoicingLedgerItem.joins(:line_items).where("job_id = ?", @job.id)
      job_bills.first.update issue_date: Time.zone.now, status: "closed"
    end

    @url = session[:original_url]
    redirect_to @url
  end

  def create_bill_from_job
    # create a client bill and add line items to it
    @bills = InvoicingLedgerItem.where(type: 'Bill') # Need this so Bill.new will work
    @bill = Bill.new type: "Bill", currency: "usd", description: "Bill for services rendered for Job #{@job.id}", status: "open", sender: current_user.business, recipient: @job.enrollment.client, period_start: @job.date, period_end: @job.date, due_date: current_user.business.payment_term.days_to_pay.days.from_now
    @bill.line_items.build job_id: @job.id, description: @job.description_for_bill, net_amount: @job.amount, quantity: 1, creator_id: current_user.id, tax_amount: 0
    if @bill.save
      flash[:success] = 'The bill was successfully created for the job. Click the airplane icon on the job card to send the bill to the client.'
    else
      @job.update(job_status_id: 1)
      flash[:error] = 'The bill could not be created. The job has not been moved to the Completed Jobs column.'
    end
  end

  def destroy
    if @job.destroy
      flash[:notice] = 'The job was deleted.'
      redirect_to :back
    else
      flash[:alert] = 'The job could not be deleted, probably because it already has a bill for it.'
      redirect_to request.referrer
    end
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def correct_user
      @job = Job.find_by(id: params[:id], enrollment_id: Enrollment.joins(client: [{ business: :user }]).where("business_id = ?", current_user.business.id))
      if @job.nil?
        flash[:error] = "You are not authorized for that job."
        redirect_to jobs_path
      end
    end

    def job_params
      params.require(:job).permit(:date, :job_status_id, :enrollment_id, :completed_on, :billed_on, :paid_on, :hours_worked)
    end
end
