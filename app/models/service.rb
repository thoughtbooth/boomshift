class Service < ActiveRecord::Base
  belongs_to :business
  has_many :enrollments
  has_many :clients, through: :enrollments
end
