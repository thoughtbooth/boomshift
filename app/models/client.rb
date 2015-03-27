class Client < ActiveRecord::Base
  acts_as_paranoid
  
  belongs_to :business
  has_one :enrollment
  has_many :services, through: :enrollment
end
