class Client < ActiveRecord::Base
  belongs_to :business
  has_one :enrollment
  has_many :services, through: :enrollment
end
