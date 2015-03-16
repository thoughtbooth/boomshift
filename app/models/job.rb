class Job < ActiveRecord::Base
  belongs_to :enrollment
  has_one :job_status
end
