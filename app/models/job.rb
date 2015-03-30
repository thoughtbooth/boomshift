class Job < ActiveRecord::Base
  acts_as_paranoid
  
  belongs_to :enrollment, -> { with_deleted }
  belongs_to :job_status
  
  validates :enrollment_id, :job_date, presence: true
  
end
