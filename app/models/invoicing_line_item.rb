class InvoicingLineItem < ActiveRecord::Base
  acts_as_line_item
  #acts_as_paranoid # Uncomment this after I have invoices working

  belongs_to :ledger_item, class_name: 'InvoicingLedgerItem'
  belongs_to :job
  
  validates :job_id, :description, :net_amount, :quantity, :creator_id, :tax_amount, presence: true
  
  def service_rate
    @job = Job.find(job_id)
    @enrollment = Enrollment.find(@job.enrollment_id)
    @service = Service.find(@enrollment.service_id)
    @service.price
  end
  
  def job_hours
    @job.hours_worked
  end
end
