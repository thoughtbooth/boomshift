class Business < ActiveRecord::Base
  acts_as_paranoid
  
  belongs_to :user
  has_many :services
  has_many :clients
  has_many :invoicing_ledger_items, foreign_key: :sender_id
  has_one :payment_term
  
  validates :name, :addr1, :city, :state, :country, :phone, :postal_code, :contact_name, presence: true
end
