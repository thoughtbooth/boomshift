class PaymentTerm < ActiveRecord::Base
  #acts_as_paranoid
  
  has_one :business
  
  validates :days_to_pay, :business_id, presence: true
end
