class Business < ActiveRecord::Base
  acts_as_paranoid
  
  belongs_to :user
  has_many :services
  has_many :clients
end
