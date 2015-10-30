class JobStatus < ActiveRecord::Base
  has_many :jobs
  
  validates :status, presence: true
end
