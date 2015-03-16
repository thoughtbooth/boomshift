class Job < ActiveRecord::Base
  belongs_to :enrollment
  belongs_to :job_status
end
