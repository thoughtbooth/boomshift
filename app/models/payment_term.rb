class PaymentTerm < ActiveRecord::Base
  #acts_as_paranoid
  
  has_one :business
end
