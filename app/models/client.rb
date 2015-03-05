class Client < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :services, :join_table => 'enrollments'
end
