class User < ActiveRecord::Base
  acts_as_paranoid
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_one :business
  
  validates :email, :f_name, :l_name, presence: true
  validates :email, uniqueness: true
  
end