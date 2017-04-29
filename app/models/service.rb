class Service < ApplicationRecord
  validates :headline, presence: true
  validates :price, numericality: true

  belongs_to :user
  has_many :orders
  acts_as_mappable through: :user
end
