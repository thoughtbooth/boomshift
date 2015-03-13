class Enrollment < ActiveRecord::Base
  belongs_to :service
  belongs_to :client
  has_many :jobs
end
