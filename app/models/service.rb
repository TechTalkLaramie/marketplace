class Service < ApplicationRecord
  validates :headline, presence: true
  validates :price, :numericality => { :greater_than_or_equal_to => 0}

  belongs_to :user
  belongs_to :category
  has_many :orders
  acts_as_mappable through: :user
end
