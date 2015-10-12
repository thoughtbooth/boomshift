class Service < ActiveRecord::Base
  acts_as_paranoid
  
  belongs_to :business
  has_one :enrollment
  has_many :clients, through: :enrollment
  
end
