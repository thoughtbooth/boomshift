class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]
  before_action :set_business, except: [:home, :mybusiness]
  
  def home
    @business = current_user.business
    @jobs = Job.joins(enrollment: [{ client: :business }]).where("business_id = ?", current_user.business.id)
    @jobs_today = Job.where(job_date: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day, job_status_id: 1).order(:job_date)
    @bills = InvoicingLedgerItem.where(type: 'Bill').where("sender_id = ?", current_user.business.id)
  end
  
  def mybusiness
    @business = current_user.business
    @payment_term = current_user.business.payment_term
    @services = Service.where("business_id = ?", current_user.business.id).order(name: :asc)
  end
  
  def myclients
    @business = current_user.business
    @clients = Client.where("business_id = ?", current_user.business.id).order(lname: :asc)
    @bills = InvoicingLedgerItem.where(type: 'Bill').where("sender_id = ?", current_user.business.id)
  end
  
  def myschedule
  end
  
  def advertising
  end
  
  def reports
  end
end
