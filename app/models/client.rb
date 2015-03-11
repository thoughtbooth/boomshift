class Client < ActiveRecord::Base
  belongs_to :business
  has_many :enrollments
  has_many :services, through: :enrollments
end
