class Service < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :business
  has_one :enrollment, dependent: :restrict_with_error
  has_many :clients, through: :enrollment, dependent: :restrict_with_error

  validates :name, :description, :price, :business_id, presence: true

end
