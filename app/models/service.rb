class Service < ActiveRecord::Base
  belongs_to :business
  has_one :enrollment
  has_many :clients, through: :enrollment
end
