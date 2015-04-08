class Job < ActiveRecord::Base
  acts_as_paranoid
  
  belongs_to :enrollment, -> { with_deleted }
  belongs_to :job_status
  has_many :line_items, class_name: 'InvoicingLineItem', foreign_key: :line_item_id
  
  validates :enrollment_id, :job_date, presence: true
  validates :hours_worked, numericality: { greater_than_or_equal_to: 1 }
  validates :hours_worked, presence: true, if: :completed?
  
  def completed?
    job_status_id == 2 or 3
  end
  
  def bill
    enrollment.service_price * hours_worked
  end
  
  def bill_total(job_status_id)
    Job.where(job_status_id: job_status_id).sum(:hours_worked) * enrollment.service_price
  end
    
end
