class Service < ActiveRecord::Base
  belongs_to :business
  has_and_belongs_to_many :clients, :join_table => 'enrollments'
end
