class Job < ActiveRecord::Base
  acts_as_paranoid
  
  belongs_to :enrollment, -> { with_deleted }
  belongs_to :job_status
  
  has_many :line_items, class_name: 'InvoicingLineItem', foreign_key: :job_id
  
  # Scopes for Job Board  # Refactor the Job Board to use these
  scope :scheduled,                       -> {where job_status_id: 1}
#   scope :scheduled_and_before_yesterday,  -> {where()} # Finish writing this scope for the Job Board refactor
#   scope :scheduled_and_yesterday,         -> {where()} # Finish writing this scope for the Job Board refactor
#   scope :scheduled_and_today,             -> {where()} # Finish writing this scope for the Job Board refactor
#   scope :scheduled_and_tomorrow,          -> {where()} # Finish writing this scope for the Job Board refactor
#   scope :scheduled_and_after_tomorrow,    -> {where()} # Finish writing this scope for the Job Board refactor
  scope :completed,                       -> {where job_status_id: 2}
  scope :invoiced,                        -> {where job_status_id: 3}
  scope :completed_or_invoiced,           -> {where 'job_status_id = ? OR job_status_id = ?', 2, 3}
  scope :paid,                            -> {where job_status_id: 4}
  
  validates :enrollment_id, :job_date, presence: true
  validates :hours_worked, numericality: { greater_than_or_equal_to: 1 }
  validates :hours_worked, presence: true, if: :completed?
  
  def description
    "Job #{id}: #{enrollment.service_name} on " + job_date.strftime("%B #{job_date.day.ordinalize}, %Y @ %l:%M %p (#{job_status.status})") if job_date
  end
  
  def description_for_invoice
    "Job #{id}: #{enrollment.service_name} on " + job_date.strftime("%B #{job_date.day.ordinalize}, %Y @ %l:%M %p (#{job_status.status})") if job_date
  end
  
  # See if this can be deleted in favor of using scope chaining (e.g. job.completed.invoiced.paid).
  def completed?
    job_status_id == 2 or 3 or 4
  end
  
  def bill
    enrollment.service_price * hours_worked
  end
  
  def bill_total(job_status_id)
    Job.where(job_status_id: job_status_id).sum(:hours_worked) * enrollment.service_price
  end
    
end
