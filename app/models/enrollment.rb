class Enrollment < ActiveRecord::Base
  belongs_to :service
  belongs_to :client
  has_many :jobs

  def client_name
    "#{client.fname} #{client.lname}"
  end

  def service_name
    "#{service.name}"
  end
  
  def client_service
    "#{client.fname} #{client.lname}: #{service.name}"
  end
end
