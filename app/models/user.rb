class User < ActiveRecord::Base
  acts_as_paranoid
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_one :business
  has_many :invoicing_ledger_items, foreign_key: :user_id
end
