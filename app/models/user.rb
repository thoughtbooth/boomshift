class User < ActiveRecord::Base
# Added by Koudoku.
  has_one :subscription

  acts_as_paranoid
  
  # Include devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :trackable, :validatable
  
  has_one :business
  
  validates :f_name, :l_name, presence: true
  validates :email, presence: true, uniqueness: true, format: /.+@.+\..+/i
  
  def full_name
    "#{f_name} #{l_name}"
  end
  
end