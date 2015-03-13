class Job < ActiveRecord::Base
  belongs_to :enrollment
  has_many :job_statuses
end
