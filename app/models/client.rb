class Client < ActiveRecord::Base
  acts_as_paranoid
  
  belongs_to :business
  has_one :enrollment
  has_many :services, through: :enrollment
  has_many :invoicing_ledger_items, foreign_key: :recipient_id
  
  validates :fname, :lname, :addr1, :city, :state, :country, :phone, :business_id, :postal_code, presence: true
  validates :email, allow_nil: true, allow_blank: true, format: /.+@.+\..+/i   # If this isn't good enough, try https://github.com/balexand/email_validator
  
  def full_name
    "#{fname} #{lname}"
  end
end
