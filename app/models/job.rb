class Job < ActiveRecord::Base
  acts_as_paranoid
  
  belongs_to :enrollment, -> { with_deleted }
  belongs_to :job_status
  
  has_many :line_items, class_name: 'InvoicingLineItem', foreign_key: :job_id
  
  scope :scheduled,                       -> { where(job_status_id: 1).order(job_date: :asc) }
  scope :scheduled_before_yesterday,      -> { where("job_date < ? AND job_status_id = ?", Time.zone.yesterday.beginning_of_day, 1).order(:job_date) }
  scope :scheduled_yesterday,             -> { where(job_date: ((Time.zone.now.beginning_of_day - 1.day)..Time.zone.now.beginning_of_day), job_status_id: 1).order(:job_date) }
  scope :scheduled_today,                 -> { where(job_date: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day, job_status_id: 1).order(:job_date) }
  scope :scheduled_tomorrow,              -> { where(job_date: Time.zone.now.end_of_day..(Time.zone.now.end_of_day + 1.day), job_status_id: 1).order(:job_date) }
  scope :scheduled_after_tomorrow,        -> { where(job_date: (Time.zone.now.end_of_day + 1.day)..(Time.zone.now.end_of_day + 10.years), job_status_id: 1).order(:job_date) }
  scope :completed,                       -> { where(job_status_id: 2).order(completed_on: :desc) }
  scope :billed,                          -> { where(job_status_id: 3).order(billed_on: :desc) }
  scope :completed_or_billed,             -> { where('job_status_id = ? OR job_status_id = ?', 2, 3) }
  scope :paid,                            -> { where(job_status_id: 4).order(paid_on: :desc) }
  
  validates :enrollment_id, :job_date, :job_status_id, presence: true
  validates :hours_worked, numericality: { greater_than_or_equal_to: 0 }
  #validates :completed_on, :hours_worked, presence: true, if: :completed?
  #validates :billed_on, presence: true, if: :billed?
  #validates :paid_on, presence: true, if: :paid?
  
  # The number field is for an eventual auto-incrementing job number per user.
  
  def description
    "Job #{id}: #{enrollment.service_name} on " + job_date.strftime("%B #{job_date.day.ordinalize}, %Y @ %l:%M %p (#{job_status.status})") if job_date
  end
  
  def short_description
    "Job #{id}: #{enrollment.service_name} (#{job_status.status})" if job_date
  end
  
  def description_for_bill
    "#{enrollment.service_name} on " + job_date.strftime("%B #{job_date.day.ordinalize}, %Y @ %l:%M %p") if job_date
  end
  
  # See if this can be deleted in favor of using scope chaining (e.g. job.completed.billed.paid).
  def completed?
    job_status_id == 2 or 3 or 4
  end
  
  def amount
    enrollment.service_price * hours_worked
  end
  
  def amount_total(job_status_id, current_business_id)
    Job.joins(enrollment: [{ client: :business }]).where("business_id = ?", current_business_id).where(job_status_id: job_status_id).sum(:hours_worked) * enrollment.service_price # Need to restrict this to current user
  end
  
  def bill_identifier
    job_bills = InvoicingLedgerItem.joins(:line_items).where("job_id = ?", id)
    job_bills.first.identifier if job_bills.any?
  end
  
  def client
    Client.find(enrollment.client_id)
  end
  
  def bill
    @job_bills = InvoicingLedgerItem.joins(:line_items).where("job_id = ?", id)
    @job_bills.first if @job_bills.any?
  end
  
  def line_items
    InvoicingLineItem.where("ledger_item_id = ?", @job_bills.first.id)
  end
    
end
