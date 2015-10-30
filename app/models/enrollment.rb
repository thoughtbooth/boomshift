class Enrollment < ActiveRecord::Base
  acts_as_paranoid
  scope :active, -> { where(deleted_at: nil) } # Only show active enrollments when this scope is used.
  
  belongs_to :service
  belongs_to :client
  has_many :jobs
  
  validates :client_id, :service_id, presence: true
  
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
    if deleted_at.nil?
      "#{client.fname} #{client.lname}: #{service.name}"
    else
      "#{client.fname} #{client.lname}: #{service.name} (Unenrolled #{deleted_at.strftime("%B #{deleted_at.day.ordinalize}, %Y @ %l:%M %p")})"
    end
  end

  def service_price
    service.price
  end
  
end
