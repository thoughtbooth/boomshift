class Client < ActiveRecord::Base
  acts_as_paranoid
  
  belongs_to :business
  has_one :enrollment
  has_many :services, through: :enrollment
  has_many :invoicing_ledger_items, foreign_key: :recipient_id
  
  validates :email, presence: true, format: /.+@.+\..+/i   # If this isn't good enough, try https://github.com/balexand/email_validator
  
  def full_name
    "#{fname} #{lname}"
  end
end
