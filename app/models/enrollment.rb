class Enrollment < ActiveRecord::Base
  acts_as_paranoid
  #default_scope { where("deleted_at IS NULL") }
  
  belongs_to :service
  belongs_to :client
  has_many :jobs
  
  
  def client_name
    "#{client.fname} #{client.lname}"
  end

  def service_name
    "#{service.name}"
  end
  
  def service_description
    "#{service.description}"
  end
  
  def client_service
    "#{client.fname} #{client.lname}: #{service.name}"
  end
end
