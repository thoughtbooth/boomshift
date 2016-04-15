class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home, :pricing, :dashboard]
  before_action :set_business, except: [:home, :dashboard, :mybusiness]

  def resend_confirmation
    current_user.send_confirmation_instructions
    flash[:success] = 'The confirmation email has been resent.'
    redirect_to root_path
  end

  def user_setup_complete
    current_user.setup_complete = true
    redirect_to request.referrer if current_user.save
  end

  def home
    render layout: "static"
  end

  def pricing
    render layout: "static"
  end

  def dashboard
    if user_signed_in? and not current_user.business.nil?
      @business = current_user.business
      @jobs = Job.joins(enrollment: [{ client: :business }]).where("business_id = ?", current_user.business.id)
      @jobs_today = @jobs.where(date: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day, job_status_id: 1).order(:date)
      @bills = InvoicingLedgerItem.where(type: 'Bill').where("sender_id = ?", current_user.business.id)
    end
  end

  def mybusiness
    if user_signed_in? and not current_user.business.nil?
      @business = current_user.business
      @payment_term = current_user.business.payment_term
      @services = Service.where("business_id = ?", current_user.business.id).order(name: :asc)
    end
  end

  def myclients
    if user_signed_in? and not current_user.business.nil?
      @business = current_user.business
      @clients = Client.where("business_id = ?", current_user.business.id).order(lname: :asc)
      @bills = InvoicingLedgerItem.where(type: 'Bill').where("sender_id = ?", current_user.business.id)
    end
  end

  def myschedule
  end

  def advertising
  end

  def reports
  end
end
