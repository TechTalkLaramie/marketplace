class Service < ApplicationRecord
  validates :headline, presence: true
  validates :price, presence: true

  belongs_to :user
  acts_as_mappable through: :user
end
